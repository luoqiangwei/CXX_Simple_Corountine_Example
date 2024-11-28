//
//  main.cpp
//  Coroutine
//
//  Created by Qiangwei Luo on 2023/5/29.
//  The demo first source: BILIBILI - happyyang的百草园 （uid: 312883756）
//

#include <iostream>
#include <coroutine>

using namespace std;

// 这个接口是协程自身的上下文和逻辑控制，存储一些状态信息（类似于线程的上下文信息，但是线程的对开发者透明）
// Promise接口，指定一系列方法控制协程自身行为。
//      - 协程被调用时的行为
//      - 协程返回时的行为（包含异常时返回的行为）
//      - 自定义co_return或co_yield表达式的对应行为
//        - suspend_never，在co_return或者co_yield运算的时候不停止协程运行
//        - suspend_always，在co_return或者co_yield运算的时候停止协程运行
struct CoRet {
    // 协程的Promise接口必须叫promise_type
    struct promise_type {
        // 存储co_yield时返回的值。
        int _out;
        // 存储最终的返回值
        int _res;
        // 存储协程中的异常
        std::exception_ptr exception_;
        
        // 初次执行协程体时执行（在初始化协程并执行的时候调用，此函数可用于初始化
        // 用户自定义协程状态信息，同时控制协程是否继续执行）
        //    其他协程或线程再次执行resume恢复协程执行
        suspend_never initial_suspend() { return {}; }
        // 在协程体全部执行结束后执行（即将销毁时调用，此时可以销毁用户自定义协程
        // 状态信息，同时可以暂停协程销毁，让其他协程或线程获取到最终结果）
        //    其他协程或线程再次执行resume恢复协程执行后，销毁
        //
        // 最后必须得suspend，不暂停的话，结构会被销毁，无法拿到最后的返回值
        suspend_always final_suspend() noexcept { return {}; }

        // 协程未捕获异常
        void unhandled_exception() {
            exception_ = std::current_exception();
        }

        // 创建协程时，返回Promise接口实例，给这个外部结构体对应的成员
        CoRet get_return_object() {
            return  {
                coroutine_handle<promise_type>::from_promise(*this)
            };
        }

        // 控制co_yield
        suspend_always yield_value(int r) {
            _out = r;
            return {};
        }
        // 控制co_return，用于协程最终return的结果
        void return_value(int r) {
            _res = r;
            cout << "coroutine: set res " << r << endl;
        }
    };
    
    // Some Data
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
        
        // await_ready()在执行co_await表达式求值时先被调用
        // - 返回值表示异步操作是否完成，完成即可继续执行，否则协程被挂起
        //   - 返回true，不会挂起协程，其他两个函数不被执行
        //   - 返回false，表示异步操作未结束，协程被挂起
        bool await_ready() { return false; }
        // await_suspend(coroutine_handle<CoRet::promise_type> h)
        // 在await_ready()返回false的时候被调用
        // - 用于挂起协程，暂停执行，并传递coroutine_handle，用于在异步操作完成，协程
        //   恢复时执行使用。协程状态会被保存，之后从当前点恢复执行
        // - await_suspend()用于设置一些在异步操作完成后，需要检查或清理的资源，例如异步
        //   操作完成的回调函数
        void await_suspend(coroutine_handle<CoRet::promise_type> h) {}
        // await_resume()异步操作完成，并且await_suspend()保存协程状态后被调用
        // - 用于恢复协程执行，并返回异步操作的结果（需要释放await_suspend使用的资源等）
        int await_resume() { return _in.guess; }
    };

    // 构造时，调用get_return_object赋值，coroutine_handle<promise_type>只能有一个这样的成员,
    // 如果有两个这种类型的成员，会只赋值给结构体中第一个，第二个不会被初始化！
    coroutine_handle<promise_type> _h; // _h.resume(), _h()
    
};


// Guess是一个协程实现
CoRet Guess(CoRet::Note& note) {
    // CoRet::promise_type promise;
    // CoRet ret = promise.get_return_object();
    // co_await promise.initial_suspend();
    int res = (rand() % 30) + 1;
    // 通过note建立数据交互联系，主要是用于获取协程调用者传入的值
    CoRet::Input input{ note };
    cout << "coroutine: Init Finish" << endl;
    while (true) {
        int g = co_await input;
        cout << "coroutine: You guess " << g << ", res: " << res << endl;
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
    CoRet::Note note = {};
    auto ret = Guess(note);
    cout << "main: make a guess ..." << endl;
    while (true) {
        std::cin >> note.guess;
        cout << "main: You input: " << note.guess << endl;
        // 继续执行协程，从co_await恢复运行
        ret._h.resume();
        // 继续执行协程，从co_yield恢复运行
        ret._h.resume();
        cout << "main: result is " <<
            ((ret._h.promise()._out == 1) ? "larger" :
             ((ret._h.promise()._out == 0) ? "the same" : "smaller")) << endl;
        if (ret._h.promise()._out == 0) break;
    }
    
    //    ret._h.resume(); // resume from co_yield
    if (ret._h.done()) {
        cout << "main: the result is " << ret._h.promise()._res << endl;
        ret._h.destroy();
    } else {
        cout << "something error! " << ret._h.promise()._res << endl;
    }
    return 0;
}
