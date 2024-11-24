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
    // 假如这里主线程是一个响应敏感的线程（例如UI线程），那么完全不用join，在协程执行过程中继续做自己的任务
    // （比如绘制界面）就可以了，定期检查一下自己需要协程完成的工作是否完成，就可以继续做原来的事情了。
    // 具体可以参照GuessCoroutineRunWithSelf，完全可以把这个Game扔到协程调度器，主线程干自己的事
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

