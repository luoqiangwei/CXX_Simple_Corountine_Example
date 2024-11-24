//
//  main.cpp
//  CoroutineScheduler
//
//  Created by Qiangwei Luo on 2024/11/21.
//

#include <iostream>
#include <coroutine>
#include <future>
#include <queue>
#include <thread>
#include <vector>
#include <functional>
#include <mutex>
#include <condition_variable>

// 简单的线程池
class ThreadPool {
public:
    ThreadPool(size_t numThreads) {
        for (size_t i = 0; i < numThreads; ++i) {
            workers.emplace_back([this] {
                while (true) {
                    std::function<void()> task;
                    {
                        std::unique_lock<std::mutex> lock(mtx);
                        cv.wait(lock, [this] { return !tasks.empty() || stop; });
                        if (stop && tasks.empty()) return;
                        task = std::move(tasks.front());
                        tasks.pop();
                    }
                    task();
                }
            });
        }
    }

    ~ThreadPool() {
        {
            std::unique_lock<std::mutex> lock(mtx);
            stop = true;
        }
        cv.notify_all();
        for (std::thread& worker : workers) {
            if (worker.joinable()) worker.join();
        }
    }

    template <typename F>
    auto enqueue(F&& func) -> std::future<std::invoke_result_t<F>> {
        using ReturnType = std::invoke_result_t<F>;
        auto task = std::make_shared<std::packaged_task<ReturnType()>>(std::forward<F>(func));
        std::future<ReturnType> res = task->get_future();
        {
            std::unique_lock<std::mutex> lock(mtx);
            tasks.emplace([task]() { (*task)(); });
        }
        cv.notify_one();
        return res;
    }

private:
    std::vector<std::thread> workers;
    std::queue<std::function<void()>> tasks;
    std::mutex mtx;
    std::condition_variable cv;
    bool stop = false;
};

// Awaitable 任务，结合线程池使用
template <typename T>
struct ThreadPoolTask {
    std::future<T> future;

    bool await_ready() { return future.wait_for(std::chrono::seconds(0)) == std::future_status::ready; }

    void await_suspend(std::coroutine_handle<> handle) {
        std::thread([handle, this] {
            future.wait();
            handle.resume();
        }).detach();
    }

    T await_resume() { return future.get(); }
};

// 调度器
class Scheduler {
public:
    void addTask(std::function<void()> task) {
        std::unique_lock<std::mutex> lock(mtx);
        tasks.push(std::move(task));
        cv.notify_one();
    }

    void run() {
        while (true) {
            std::function<void()> task;
            {
                std::unique_lock<std::mutex> lock(mtx);
                cv.wait(lock, [this] { return !tasks.empty(); });
                task = std::move(tasks.front());
                tasks.pop();
            }
            task();
        }
    }

private:
    std::queue<std::function<void()>> tasks;
    std::mutex mtx;
    std::condition_variable cv;
};

// 示例协程任务
struct ExampleTask {
    struct promise_type {
        ExampleTask get_return_object() { return {}; }
        std::suspend_never initial_suspend() { return {}; }
        std::suspend_never final_suspend() noexcept { return {}; }
        void return_void() {}
        void unhandled_exception() { std::terminate(); }
    };

    ExampleTask() = default;
};

ExampleTask asyncTask(Scheduler& scheduler, ThreadPool& threadPool) {
    std::cout << "Task started\n";

    int result = co_await ThreadPoolTask<int>{threadPool.enqueue([] {
        std::this_thread::sleep_for(std::chrono::seconds(2));
        return 42;
    })};

    scheduler.addTask([result] {
        std::cout << "Task completed with result: " << result << "\n";
    });
}

int main() {
    Scheduler scheduler;
    ThreadPool threadPool(4);

    // 添加任务到调度器
    scheduler.addTask([&scheduler, &threadPool] { asyncTask(scheduler, threadPool); });

    // 运行调度器
    scheduler.run();
}
