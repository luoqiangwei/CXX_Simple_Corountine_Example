//
//  main.cpp
//  CoroutineScheduler
//
//  Created by Qiangwei Luo on 2024/11/21.
//

#include <iostream>
#include <coroutine>
#include <queue>
#include <memory>
#include <functional>

class CoroutineScheduler {
public:
    // 添加协程到调度器
    void schedule(std::coroutine_handle<> handle) {
        queue.push(handle);
    }

    // 运行调度器
    void run() {
        while (!queue.empty()) {
            auto handle = queue.front();
            queue.pop();
            handle.resume(); // 恢复协程
            if (handle.done()) {
                handle.destroy(); // 清理完成的协程
            } else {
                schedule(handle); // 如果协程未完成，重新调度
            }
        }
    }

private:
    std::queue<std::coroutine_handle<>> queue; // 协程队列
};

// 协程的返回类型
struct Coroutine {
    struct promise_type {
        Coroutine get_return_object() {
            return Coroutine{std::coroutine_handle<promise_type>::from_promise(*this)};
        }
        std::suspend_always initial_suspend() { return {}; }
        std::suspend_always final_suspend() noexcept { return {}; }
        void return_void() {}
        void unhandled_exception() {}
    };

    std::coroutine_handle<promise_type> handle;

    Coroutine(std::coroutine_handle<promise_type> h) : handle(h) {}
    ~Coroutine() { if (handle) handle.destroy(); }
};

// 示例协程
Coroutine exampleCoroutine(int id) {
    std::cout << "Coroutine " << id << " started." << std::endl;
    co_await std::suspend_always{}; // 挂起协程
    std::cout << "Coroutine " << id << " resumed." << std::endl;
    co_await std::suspend_always{}; // 再次挂起
    std::cout << "Coroutine " << id << " finished." << std::endl;
}

int main() {
    CoroutineScheduler scheduler;

    // 创建并调度多个协程
    for (int i = 1; i <= 3; ++i) {
        scheduler.schedule(exampleCoroutine(i).handle);
    }

    // 运行调度器
    scheduler.run();

    return 0;
}
