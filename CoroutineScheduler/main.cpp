//
//  main.cpp
//  CoroutineScheduler
//
//  Created by Qiangwei Luo on 2024/11/21.
//

#include <iostream>
#include <filesystem>
#include <fstream>
#include <thread>
#include <vector>
#include <coroutine>
#include <mutex>
#include <queue>
#include <condition_variable>
#include <string.h>
#if defined(__APPLE__)
#include <dispatch/dispatch.h>
#elif defined(__linux__) // clang++ main.cpp -luring -fcoroutines -std=c++23
// TODO: Need fix IOUring
/* SPDX-License-Identifier: MIT */
/*
 * Very basic proof-of-concept for doing a copy with linked SQEs. Needs a
 * bit of error handling and short read love.
 * First Ref: https://medium.com/oracledevs/an-introduction-to-the-io-uring-asynchronous-i-o-framework-fad002d7dfc1
 * IO-Uring Ref: http://arthurchiao.art/blog/intro-to-io-uring-zh/
 */
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <errno.h>
#include <inttypes.h>
#include <liburing.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#endif

namespace fs = std::filesystem;

struct Task {
    struct promise_type;
    using handle_type = std::coroutine_handle<promise_type>;

    struct promise_type {
        int _res;
        auto get_return_object() { return Task{handle_type::from_promise(*this)}; }
        std::suspend_always initial_suspend() { return {}; }
        std::suspend_always final_suspend() noexcept { return {}; }
        void return_void() { _res = 0; }
        void unhandled_exception() { std::exit(-1); }
    };

    handle_type coro_handle;

    Task(const Task&) = delete; // 禁止拷贝构造
    Task& operator=(const Task&) = delete; // 禁止拷贝赋值
    Task(handle_type h) : coro_handle(h) {}
    Task(Task&& t) : coro_handle(t.coro_handle) { t.coro_handle = nullptr; }
    ~Task() {}
};

class Scheduler {
    std::queue<Task::handle_type> tasks;
    std::mutex mtx;
    std::condition_variable cv;
    bool stop = false;

public:
    void schedule(Task::handle_type task) {
#if defined(__linux__) || defined(__AIO__)
        while (tasks.size() > 100) {
            std::this_thread::sleep_for(std::chrono::milliseconds(1));
        }
#endif
        {
            std::lock_guard<std::mutex> lock(mtx);
            tasks.push(task);
        }
        cv.notify_one();
    }

    void run() {
        while (true) {
            Task::handle_type task;
            {
                std::unique_lock<std::mutex> lock(mtx);
                cv.wait(lock, [this]() { return !tasks.empty() || stop; });
                if (stop && tasks.empty()) return;
                task = tasks.front();
                tasks.pop();
            }
            
            task.resume();
            if (task.done()) {
                task.destroy();  // 运行完成后销毁句柄
            } else {
                // reschedule task
                schedule(task);
            }
        }
    }
    
    void shutdown() {
        {
            std::lock_guard<std::mutex> lock(mtx);
            stop = true;
        }
        cv.notify_all();
    }
};

Scheduler scheduler;

#if defined(__APPLE__)
Task copy_file1(const fs::path src, const fs::path dst) {
    int in_fd = open(src.c_str(), O_RDONLY);
    int out_fd = open(dst.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (in_fd == -1 || out_fd == -1) {
        std::cerr << "Failed to open files: " << strerror(errno) << std::endl;
        if (in_fd != -1) close(in_fd);
        if (out_fd != -1) close(out_fd);
        co_return;
    }

    // 全局队列 (dispatch_get_global_queue) 用于并发执行异步任务
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    // 创建一个 I/O 通道，该通道在后台队列中异步运行
    dispatch_io_t channel = dispatch_io_create(DISPATCH_IO_STREAM, in_fd, queue, ^(int error) {
        close(in_fd);
        close(out_fd);
    });
    
    // 使用 shared_ptr 来管理状态
    struct ReadContext {
        bool done = false;
        int error = 0;
    };

    auto ctx = std::make_shared<struct ReadContext>();
    ctx->done = false;
    ctx->error = 0;

    // dispatch_io_read 和 dispatch_io_write 的操作不会阻塞主线程
    dispatch_io_set_low_water(channel, 1); // 确保即使只有 1 字节数据也会触发读取
    dispatch_io_read(channel, 0, SIZE_MAX, queue, ^(bool done, dispatch_data_t data, int error) {
        ctx->error = error;
        if (error) {
            std::cerr << "Read error: " << strerror(error) << std::endl;
            dispatch_io_close(channel, DISPATCH_IO_STOP);
            ctx->done = true;
            return;
        }

        // dispatch_data_t 自动管理其底层内存，不需要手动分配和释放内存
        dispatch_data_apply(data, ^bool(dispatch_data_t region, size_t offset, const void* buffer, size_t size) {
            ssize_t written = write(out_fd, buffer, size);
            if (written == -1) {
                std::cerr << "Write error: " << strerror(errno) << std::endl;
                dispatch_io_close(channel, DISPATCH_IO_STOP);
                ctx->done = true;
                return false;
            }
            return true; // Continue processing
        });

        if (done) {
            dispatch_io_close(channel, 0);
            ctx->done = true;
        }
    });
    
    // 协程挂起等待完成
    while (!ctx->done) {
        co_await std::suspend_always{};
    }

    if (ctx->error == 0) {
        std::cout << "Copied: " << src << " -> " << dst << std::endl;
    }

    co_return;
}
#elif defined(__linux__)
#define QD    64
#define BS    (4096)

struct io_data {
    size_t offset;
    int index;
    struct iovec iov;
};

// IOUring当前队列进行系统调用的数量
static unsigned inflight;
struct io_uring global_ring;

// 创建一个 read->write SQE chain
static void queue_rw_pair(struct io_uring *ring, off_t size, off_t offset,
                          int infd, int outfd) {
    struct io_uring_sqe *sqe;
    struct io_data *data;
    char *ptr;

    ptr = (char*)malloc(size + sizeof(*data));
    data = (struct io_data *)(ptr + size);
    data->index = 0;
    data->offset = offset;
    data->iov.iov_base = ptr;
    data->iov.iov_len = size;

    sqe = io_uring_get_sqe(ring);                            // 获取可用 SQE
    io_uring_prep_readv(sqe, infd, &data->iov, 1, offset);   // 准备 read 请求
    sqe->flags |= IOSQE_IO_LINK;                             // 设置为 LINK 模式
    io_uring_sqe_set_data(sqe, data);                        // 设置 data

    sqe = io_uring_get_sqe(ring);                            // 获取另一个可用 SQE
    io_uring_prep_writev(sqe, outfd, &data->iov, 1, offset); // 准备 write 请求
    io_uring_sqe_set_data(sqe, data);                        // 设置 data
}

// 处理完成（completion）事件：释放 SQE 的内存缓冲区，通知内核已经消费了 CQE。
static int handle_cqe(struct io_uring *ring, struct io_uring_cqe *cqe,
                      int infd, int outfd) {
    int ret = 0;
    struct io_data *data = (struct io_data *)io_uring_cqe_get_data(cqe);       // 获取 CQE
    data->index++;

    if (cqe->res < 0) {
        if (cqe->res == -ECANCELED) {
            queue_rw_pair(&global_ring, BS, data->offset, infd, outfd);
            inflight += 2;
        } else {
            printf("cqe error: %s\n", strerror(cqe->res));
            ret = 1;
        }
    }

    if (data->index == 2) {        // read->write chain 完成，释放缓冲区内存
        char *ptr = (char*) data - data->iov.iov_len;
        free(ptr);
    }

    io_uring_cqe_seen(ring, cqe);  // 通知内核已经消费了 CQE 事件
    return ret;
}

static int get_file_size(int fd, off_t *size) {
    struct stat st;

    if (fstat(fd, &st) < 0)
        return -1;
    if (S_ISREG(st.st_mode)) {
        *size = st.st_size;
        return 0;
    } else if (S_ISBLK(st.st_mode)) {
        unsigned long long bytes;

        if (ioctl(fd, BLKGETSIZE64, &bytes) != 0)
            return -1;

        *size = bytes;
        return 0;
    }

    return -1;
}

Task copy_file1(const fs::path src, const fs::path dst) {
    struct io_uring_cqe *cqe;
    off_t offset = 0;
    off_t insize = 0;
    size_t this_size;
    int in_fd = open(src.c_str(), O_RDONLY);
    int out_fd = open(dst.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (in_fd == -1 || out_fd == -1) {
        std::cerr << "Failed to open files: " << strerror(errno) << std::endl;
        if (in_fd != -1) close(in_fd);
        if (out_fd != -1) close(out_fd);
        co_return;
    }
    
    if (get_file_size(in_fd, &insize)) {
        co_return;
    }
    
    offset = 0;
    while (insize) {                      // 数据还没处理完
        int has_inflight = inflight;      // 当前正在进行中的 SQE 数量
        int depth;  // SQE 阈值，当前进行中的 SQE 数量（inflight）超过这个值之后，需要阻塞等待 CQE 完成

        while (insize && inflight < QD) { // 数据还没处理完，io_uring 队列也还没用完
            this_size = BS;
            if (this_size > insize)       // 最后一段数据不足 BS 大小
                this_size = insize;

            queue_rw_pair(&global_ring, this_size, offset, in_fd, out_fd); // 创建一个 read->write chain，占用两个 SQE
            offset += this_size;
            insize -= this_size;
            inflight += 2;                // 正在进行中的 SQE 数量 +2
        }

        if (has_inflight != inflight)     // 如果有新创建的 SQE，
            io_uring_submit(&global_ring);        // 就提交给内核

        if (insize)                       // 如果还有 data 等待处理，
            depth = QD;                   // 阈值设置 SQ 的队列长度，即 SQ 队列用完才开始阻塞等待 CQE；
        else                              // data 处理已经全部提交，
            depth = 1;                    // 阈值设置为 1，即只要还有 SQE 未完成，就阻塞等待 CQE

        // 下面这个 while 只有 SQ 队列用完或 data 全部提交之后才会执行到
        while (inflight >= depth) {       // 如果所有 SQE 都已经用完，或者所有 data read->write 请求都已经提交
            while (true) {
                int ret = io_uring_peek_cqe(&global_ring, &cqe);
                if (ret != 0 || cqe == NULL) {
                    // 超时，没有 CQE 可用
                    co_await std::suspend_always{};
                } else {
                    break;
                }
            }
            handle_cqe(&global_ring, cqe, in_fd, out_fd);        // 处理 completion 事件：释放 SQE 内存缓冲区，通知内核 CQE 已消费
            inflight--;                   // 正在进行中的 SQE 数量 -1
        }
    }

    close(in_fd);
    close(out_fd);

    std::cout << "Copied: " << src << " -> " << dst << std::endl;
    co_return;
}
#elif defined(__AIO__)
// 异步读取和写入文件的辅助函数
ssize_t aio_read_file(int fd, void* buf, size_t count, off_t offset, struct aiocb* cb) {
    cb->aio_fildes = fd;
    cb->aio_buf = buf;
    cb->aio_nbytes = count;
    cb->aio_offset = offset;
    if (aio_read(cb) == -1) {
        // aio queue full
        if (errno != EAGAIN) {
            std::cerr << "aio_read failed: " << strerror(errno)  << std::endl;
        }
        return -1;
    }
    return 0;
}

ssize_t aio_write_file(int fd, void* buf, size_t count, off_t offset, struct aiocb* cb) {
    cb->aio_fildes = fd;
    cb->aio_buf = buf;
    cb->aio_nbytes = count;
    cb->aio_offset = offset;
    if (aio_write(cb) == -1) {
        // aio queue full
        if (errno != EAGAIN) {
            std::cerr << "aio_write failed: " << strerror(errno)  << std::endl;
        }
        return -1;
    }
    return 0;
}

Task copy_file1(const fs::path src, const fs::path dst) {
    int in_fd = open(src.c_str(), O_RDONLY);
    int out_fd = open(dst.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (in_fd == -1 || out_fd == -1) {
        std::cerr << "Failed to open files" << std::endl;
        co_return;
    }

    std::vector<char> buffer(4096);
    struct aiocb read_cb = {};
    struct aiocb write_cb = {};
    off_t offset = 0;
    while (true) {
        // 异步读取
        while (aio_read_file(in_fd, buffer.data(), buffer.size(), offset, &read_cb) == -1) {
            if (errno == EAGAIN) {
                // I/O 队列已满
                co_await std::suspend_always{}; // 挂起协程，返回调度下一个协程
            } else {
                close(in_fd);
                close(out_fd);
                co_return;
            }
        }
        
        // 等待异步读取完成
        while (aio_error(&read_cb) == EINPROGRESS) {
            co_await std::suspend_always{}; // 挂起协程，等待 I/O 操作完成
        }
        
        // 检查读操作是否完成
        if (aio_error(&read_cb) != 0) {
            std::cerr << "Read error" << std::endl;
            close(in_fd);
            close(out_fd);
            co_return;
        }
        
        ssize_t bytes_read = aio_return(&read_cb);
        if (bytes_read == 0) {
            break;  // EOF, no more data to read
        }
        
        // 异步写入
        while (aio_write_file(out_fd, buffer.data(), bytes_read, offset, &write_cb) == -1) {
            if (errno == EAGAIN) {
                // I/O 队列已满
                co_await std::suspend_always{}; // 挂起协程，返回调度下一个协程
            } else {
                close(in_fd);
                close(out_fd);
                co_return;
            }
        }
        
        // 等待异步写入完成
        while (aio_error(&write_cb) == EINPROGRESS) {
            co_await std::suspend_always{}; // 挂起协程，等待 I/O 操作完成
        }
        
        // 检查写操作是否完成
        if (aio_error(&write_cb) != 0) {
            std::cerr << "Write error" << std::endl;
            close(in_fd);
            close(out_fd);
            co_return;
        }

        ssize_t bytes_written = aio_return(&write_cb);
        offset += bytes_written;
    }

    // 关闭文件
    close(in_fd);
    close(out_fd);
    std::cout << "Copied: " << src << " -> " << dst << std::endl;
    co_return;
}
#else
Task copy_file1(const fs::path src, const fs::path dst) {
    std::ifstream in(src, std::ios::binary);
    std::ofstream out(dst, std::ios::binary);
    std::vector<char> buffer(4096);
    while (in.read(buffer.data(), buffer.size()) || in.gcount() > 0) {
        co_await std::suspend_always{}; // 模拟异步操作
        out.write(buffer.data(), in.gcount());
    }
    out.close();
    in.close();
    std::cout << "Copied: " << src << " -> " << dst << std::endl;
    co_return;
}
#endif

Task copy_directory(const fs::path& src_dir, const fs::path& dst_dir) {
    // 协程任务划分
    for (const auto& entry : fs::recursive_directory_iterator(src_dir)) {
        const auto& src_path = entry.path();
        auto dst_path = dst_dir / fs::relative(src_path, src_dir);
        if (entry.is_directory()) {
            fs::create_directories(dst_path);
        } else if (entry.is_regular_file()) {
            scheduler.schedule(copy_file1(src_path, dst_path).coro_handle);
        }
    }
    co_return;
}

int CopyDirectory(const fs::path& src_dir, const fs::path& dst_dir) {
    auto task = copy_directory(src_dir, dst_dir);
    int res = 0;
    task.coro_handle.resume();
    if (task.coro_handle.done()) {
        res = task.coro_handle.promise()._res;
        task.coro_handle.destroy();
    };
    return res;
}

int main() {
#if defined(__APPLE__)
    fs::path src_dir = "/Users/luoqiangwei/Downloads/testa";
    fs::path dst_dir = "/Users/luoqiangwei/Downloads/testb";
#elif defined(__linux__)
    fs::path src_dir = "/root/testa";
    fs::path dst_dir = "/root/testb";
    if (io_uring_queue_init(32, &global_ring, 0) < 0) {
        std::cerr << "io_uring initialization failed!" << std::endl;
        return -1;
    }
#endif
    fs::create_directories(dst_dir);
    
    auto start = std::chrono::high_resolution_clock::now();
    // 运行协程调度器的线程
    std::thread worker([]() { scheduler.run(); });
    CopyDirectory(src_dir, dst_dir);
    // 假如这里主线程是一个响应敏感的线程（例如UI线程），那么完全不用join，在协程执行过程中继续做自己的任务
    // （比如绘制界面）就可以了，定期检查一下自己需要协程完成的工作是否完成，就可以继续做原来的事情了。
    // 具体可以参照GuessCoroutineRunWithSelf，完全可以把这个Game扔到协程调度器，主线程干自己的事
    scheduler.shutdown();
    worker.join();
#if defined(__linux__)
    io_uring_queue_exit(&global_ring);
#endif
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    std::cout << "Elapsed time: " << duration.count() << " milliseconds" << std::endl;
    // OUT: 3555 milliseconds
    //      3636 milliseconds
    //      3680 milliseconds
    
    // One Thread Scheduler:
    // OUT: 3529 milliseconds
    //      3413 milliseconds
    
    // Use AIO in one Thread Scheduler （FD Queue Full！）:
    // OUT: 6855 milliseconds
    //      6818 milliseconds
    
    // Use Grand Central Dispatch (GCD) in one Thread Scheduler:
    // OUT: 2432 milliseconds
    //      1579 milliseconds
    
    //    协程并在包含多个超大文件的IO会有所优势。
    //    - 主线程拷贝超大文件的时候的时候，堵塞了其他小文件的拷贝。
    //    - 线程池如果运行的线程都被超大文件拷贝给占满，那么小文件的拷贝也将会变得非常缓慢。
    //    - 这个时候协程的优势才能体现出来，可以一个线程同时拷贝多个文件，确保了一些小资源的拷贝不会被“饿死”
    //
    //    实际应用建议：
    //    - CPU密集型任务交给线程池
    //    - 磁盘I/O密集型任务可以交给协程池来做，配合上调度器的设计，可以做多级有限队列，给重要的协程任务分配更多的时间等
    //      磁盘I/O密集型也可以交给协程池+线程池来做，小型文件交给协程池处理，而大文件交给线程池处理
    //    - 网络编程相比epoll之类的机制可能不仅没有优势，甚至性能会更差
    //    - 减少资源消耗并提高并发。可以用一个"单线程协程调度器"处理任何耗时任务，并且这些任务都是并发的，这个线程可以称为
    //      后台线程。（在实际性能上可能没有什么帮助，甚至有拖累，但是可以简化用户开发异步&并发程序（前提是封装好协程框架），
    //      还能减少系统资源占用（单线程运行），很难出现调度&同步问题（相比线程而言））
    //         * 这样就可以做到将性能敏感的线程和后台线程分离，性能敏感线程上的所有耗时任务都可以丢给协程来做，并且这些
    //           任务都是并行的！不会出现饥饿的情况！
    //         * 那么这个时候可以想平时编程一样编写逻辑扔到协程里调度吗？
    //         * 当然是不行的！如果一个任务没有“暂停点”，协程根本就不能调度，所以一开始就需要考虑有哪些耗时任务需要做，
    //           然后需要预先实现这些“协程专用函数”（比如拷贝文件），之后对性能敏感的线程就可以使用这些“协程专用函数”，
    //           将耗时任务扔给协程并发执行。

    return 0;
}

