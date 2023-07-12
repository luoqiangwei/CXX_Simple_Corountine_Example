//
//  main.cpp
//  Coroutine
//
//  Created by Qiangwei Luo on 2023/5/29.
//

#include <iostream>
#include <coroutine>

using namespace std;

// Promise接口，指定一系列方法控制协程自身行为。
//      - 协程被调用时的行为
//      - 协程返回时的行为（包含异常时返回的行为）
//      - 自定义co_return或co_yield表达式的对应行为
struct CoRet {
    struct promise_type {
        // 存储co_yield时返回的值。
        int _out;
        // 存储最终的返回值
        int _res;
        suspend_never initial_suspend() { return {}; }
//        suspend_never final_suspend() noexcept { return {}; }
        // 最后必须得suspend，不暂停的话，结构会被销毁，无法拿到最后的返回值
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

// Awaitable接口，指定一系列方法控制co_await表达式的语义。
//      当一个值被co_await时，代码会被转换成awaitable对象的一系列方法的调用。
//      - 可以控制是否挂起当前协程。（await_ready，true是不挂起，false是挂起）
//      - 协程恢复时，返回的值（await_resume）
struct Input {
    Note& _in;
    // 控制co_await的时候是否暂停并暂时返回，下一次执行时将会继续从暂停位置继续
    // true是不返回，直接执行
    bool await_ready() { return true; }
    void await_suspend(coroutine_handle<CoRet::promise_type> h) {}
    int await_resume() { return _in.guess; }
};

// Guess是一个协程实现
CoRet Guess(Note& note) {
    // CoRet::promise_type promise;
    // CoRet ret = promise.get_return_object();
    // co_await promise.initial_suspend();
    int res = (rand() % 30) + 1;
    // 通过note建立数据交互联系，主要是用于获取协程调用者传入的值
    Input input{ note };
    while (true) {
        int g = co_await input;
        cout << "coroutine: You guess " << g << endl;
//        cout << "coroutine: " << res << endl;
        int result = res < g ? 1 : (res == g ? 0 : -1);
        // co_await promise.yield_value();
        // 中断协程执行，并且返回一个值
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
        // 继续执行协程
        ret._h.resume();
        cout << "main: result is " <<
            ((ret._h.promise()._out == 1) ? "larger" :
             ((ret._h.promise()._out == 0) ? "the same" : "smaller")) << endl;
        if (ret._h.promise()._out == 0) break;
    }
    
    ret._h.resume(); // resume from co_yield
    if (ret._h.done()) {
        cout << "main: the result is " << ret._h.promise()._res << endl;
        ret._h.destroy();
    } else {
        cout << "something error! " << ret._h.promise()._res << endl;
    }
    return 0;
}
