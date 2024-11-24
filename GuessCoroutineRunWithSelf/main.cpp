//
//  main.cpp
//  GuessCoroutineRunWithSelf
//
//  Created by Qiangwei Luo on 2024/11/24.
//

#include <iostream>
#include <coroutine>
#include <thread>
#include <unistd.h>

using namespace std;

struct CoRet {
    struct promise_type {
        int _out;
        int _res;
        std::exception_ptr exception_;
        
        suspend_always initial_suspend() { return {}; }
        suspend_always final_suspend() noexcept { return {}; }
        void unhandled_exception() {
            exception_ = std::current_exception();
        }
        CoRet get_return_object() {
            return  {
                coroutine_handle<promise_type>::from_promise(*this)
            };
        }
        suspend_never yield_value(int r) {
            _out = r;
            return {};
        }
        void return_value(int r) {
            _res = r;
            cout << "coroutine: set res " << r << endl;
        }
    };
    
    struct Note {
        int guess;
    };
    
    struct Input {
        Note& _in;
        
        bool await_ready() { return false; }
        void await_suspend(coroutine_handle<CoRet::promise_type> h) {
            // 更好的做法，是将耗时任务在co_await的时候扔到线程池里，然后这个co_await的调用者线程可以继续做别的事情
            // 但是这里还有一个问题，如果在协程调度器里把这个任务submit给线程池了，那么线程池完成任务后如何还给原来的线程调度器呢
            std::thread([this, h]() {
                std::cin >> _in.guess;
                cout << "suspend finish: You input: " << _in.guess << endl;
                h.resume();
            }).detach(); // detach是为了让线程可以活着离开作用域，否则触发ABORT
        }
        int await_resume() { return _in.guess; }
    };

    coroutine_handle<promise_type> _h;
    
};


// Guess是一个协程实现
CoRet Guess() {
    int res = (rand() % 30) + 1;
    CoRet::Note note = {};
    CoRet::Input input{ note };
    cout << "coroutine: Init Finish" << endl;
    while (true) {
        int g = co_await input;
        cout << "coroutine: You guess " << g << ", res: " << res << endl;
        int result = res < g ? 1 : (res == g ? 0 : -1);
        cout << "coroutine: result is " <<
            ((result == 1) ? "larger" :
             ((result == 0) ? "the same" : "smaller")) << endl;
        if (result == 0) {
            break;
        }
    }

    cout << "coroutine: the game is finish" << endl;
    co_return res;
}

int main(int argc, const char * argv[]) {
    srand((uint)time(nullptr));
    auto coroutine = Guess();
    cout << "main: make a guess ..." << endl;
    // Start coroutine...
    coroutine._h.resume();
    int count = 0;
    while (true) {
        if (coroutine._h.done()) {
            cout << "main: the coroutine result is " << coroutine._h.promise()._res << endl;
            coroutine._h.destroy();
            break;
        }
        count += 5;
        sleep(5);
        cout << "main: sleep wait coroutine " << count << " s" << endl;
    }
    return 0;
}

