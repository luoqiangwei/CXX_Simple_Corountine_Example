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
#include <aio.h>
#include <fcntl.h>
#include <unistd.h>

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
    fs::path src_dir = "/Users/luoqiangwei/Downloads/testa";
    fs::path dst_dir = "/Users/luoqiangwei/Downloads/testb";
    fs::create_directories(dst_dir);
    
    auto start = std::chrono::high_resolution_clock::now();
    // 运行协程调度器的线程
    std::thread worker([]() { scheduler.run(); });
    CopyDirectory(src_dir, dst_dir);
    scheduler.shutdown();
    worker.join();
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    std::cout << "Elapsed time: " << duration.count() << " milliseconds" << std::endl;
    // OUT: 3555 milliseconds
    //      3636 milliseconds
    //      3680 milliseconds
    
    // One Thread Scheduler:
    // OUT: 3529 milliseconds
    //      3413 milliseconds
    
    // Use AIO in one Thread Scheduler:
    // OUT: 6855 milliseconds
    //      6818 milliseconds
    
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

    return 0;
}

