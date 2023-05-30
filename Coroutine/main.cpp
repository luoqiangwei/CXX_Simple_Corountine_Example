//
//  main.cpp
//  Coroutine
//
//  Created by Qiangwei Luo on 2023/5/29.
//

#include <iostream>
#include <coroutine>

using namespace std;

struct CoRet {
    struct promise_type {
        int _out;
        int _res;
        suspend_never initial_suspend() { return {}; }
//        suspend_never final_suspend() noexcept { return {}; }
        // 最后必须得suspend，否则不暂停的话，结构会被销毁
        suspend_always final_suspend() noexcept { return {}; }
        void unhandled_exception() {}
        CoRet get_return_object() {
            return  {
                coroutine_handle<promise_type>::from_promise(*this)
            };
        }
        suspend_always yield_value(int r) {
            _out = r;
            return {};
        }
        // 用于协程最终return的结果
        void return_value(int r) {
            _res = r;
            cout << "coroutine: set res " << r << endl;
        }
    };
    
    coroutine_handle<promise_type> _h; // _h.resume(), _h()
};

struct Note {
    int guess;
};

struct Input {
    Note& _in;
    // 控制co_await的时候是否暂停并暂时返回，下一次执行时将会继续从暂停位置继续
    // true是不返回，直接执行
    bool await_ready() { return true; }
    void await_suspend(coroutine_handle<CoRet::promise_type> h) {}
    int await_resume() { return _in.guess; }
};

// Guess就是一个协程实现
CoRet Guess(Note& note) {
    // CoRet::promise_type promise;
    // CoRet ret = promise.get_return_object();
    // co_await promise.initial_suspend();
    int res = (rand() % 30) + 1;
    Input input{ note };
    while (true) {
        int g = co_await input;
        cout << "coroutine: You guess " << g << endl;
//        cout << "coroutine: " << res << endl;
        int result = res < g ? 1 : (res == g ? 0 : -1);
        // co_await promise.yield_value();
        co_yield result;
        if (result == 0) break;
    }

    // co_return之后，协程状态将会变为“完成”
    co_return res;
    // co_await promise.final_suspend();
    //      destruct promise p
    //      destruct parameters in coroutine frame
    //      destroy coroutine state
}

int main(int argc, const char * argv[]) {
    srand((uint)time(nullptr));
    Note note;
    auto ret = Guess(note);
    cout << "main: make a guess ..." << endl;
    while (true) {
        std::cin >> note.guess;
//        cout << "main: You input: " << note.guess << endl;
        ret._h.resume();
        cout << "main: result is " <<
            ((ret._h.promise()._out == 1) ? "larger" :
             ((ret._h.promise()._out == 0) ? "the same" : "smaller")) << endl;
        if (ret._h.promise()._out == 0) break;
    }
    
    ret._h.resume(); // resume from co_yield
    if (ret._h.done()) {
        cout << "main: the result is " << ret._h.promise()._res << endl;
    } else {
        cout << "something error! " << ret._h.promise()._res << endl;
    }
    return 0;
}
