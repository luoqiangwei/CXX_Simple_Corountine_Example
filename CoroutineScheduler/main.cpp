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

    return 0;
}

