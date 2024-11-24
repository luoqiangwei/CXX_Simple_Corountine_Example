//
//  main.cpp
//  TwoCoroutineInOneThread
//
//  Created by Qiangwei Luo on 2024/11/21.
//

#include <iostream>
#include <coroutine>
#include <thread>

using namespace std;

// Some Sync Data
struct Note {
    int guess;
    int gameFinish;
};

// ## 定义一个控制游戏运行逻辑、游戏输入逻辑共用的协程结构
// 这个接口是协程自身的上下文和逻辑控制，存储一些状态信息（类似于线程的上下文信息，但是线程的对开发者透明）
struct GameCoroutine {
    // Promise接口，指定一系列方法控制协程自身行为。
    //      - 协程被调用时的行为
    //      - 协程返回时的行为（包含异常时返回的行为）
    //      - 自定义co_return或co_yield表达式的对应行为
    //        - suspend_never，在co_return或者co_yield运算的时候不停止协程运行
    //        - suspend_always，在co_return或者co_yield运算的时候停止协程运行
    // 协程的Promise接口必须叫promise_type
    struct promise_type {
        // 存储co_yield时返回的值（在yield_value()使用了这个变量，编译器将自动将这个变量作为关键词返回值）。
        int _out;
        // 存储co_return最终的返回值（在return_value()使用了这个变量，编译器将自动将这个变量作为co_return关键词返回值）。
        int _res;
        // 存储协程中的异常
        std::exception_ptr exception_;
        
        // 初次执行协程体时执行（在初始化协程并执行的时候调用，此函数可用于初始化
        // 用户自定义协程状态信息，同时控制协程是否继续执行）
        //    其他协程或线程再次执行resume恢复协程执行
        // ## 本次有两个协程，为了方便调度，在初始化的时候就暂停
        suspend_always initial_suspend() { return {}; }
        // 在协程体全部执行结束后执行（即将销毁时调用，此时可以销毁用户自定义协程
        // 状态信息，同时可以暂停协程销毁，让其他协程或线程获取到最终结果）
        //    其他协程或线程再次执行resume恢复协程执行后，销毁
        //
        // 协程最后必须得suspend，不暂停的话，结构会被销毁，无法拿到最后的返回值（除非要协程结束的返回值了）
        //
        suspend_always final_suspend() noexcept { return {}; }

        // 协程未捕获异常
        void unhandled_exception() {
            exception_ = std::current_exception();
        }

        // 创建协程时，返回Promise接口
        GameCoroutine get_return_object() {
            return  {
                coroutine_handle<promise_type>::from_promise(*this)
            };
        }

        // 控制co_yield
        suspend_always yield_value(int r) {
            // 编译时，自动判断使用了_out存储，所以协程co_yield返回_out变量的值
            _out = r;
            return {};
        }
        // 控制co_return，用于协程最终return的结果
        void return_value(int r) {
            //
            _res = r;
            cout << "coroutine: set res " << r << endl;
        }
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
        // await_suspend(coroutine_handle<GameCoroutine::promise_type> h)
        // 在await_ready()返回false的时候被调用
        // - 用于挂起协程，暂停执行，并传递coroutine_handle，用于在异步操作完成，协程
        //   恢复时执行使用。协程状态会被保存，之后从当前点恢复执行
        // - await_suspend()用于设置一些在异步操作完成后，需要检查或清理的资源，例如异步
        //   操作完成的回调函数
        void await_suspend(coroutine_handle<GameCoroutine::promise_type> h) {}
        // await_resume()异步操作完成，并且await_suspend()保存协程状态后被调用
        // - 用于恢复协程执行，并返回异步操作的结果（需要释放await_suspend使用的资源等）
        int await_resume() { return _in.guess; }
    };

    // 构造时，调用get_return_object赋值，coroutine_handle<promise_type>只能有一个这样的成员,
    // 如果有两个这种类型的成员，会只赋值给结构体中第一个，第二个不会被初始化！
    coroutine_handle<promise_type> handle; // _h.resume(), _h()
    
};


// Guess是一个协程实现
GameCoroutine Guess(Note& note) {
    // GameCoroutine::promise_type promise;
    // GameCoroutine ret = promise.get_return_object();
    // co_await promise.initial_suspend();
    int res = (rand() % 30) + 1;
    // 通过note建立数据交互联系，主要是用于获取协程调用者传入的值
    GameCoroutine::Input input{ note };
    cout << "game coroutine: Init Finish" << endl;
    while (true) {
        int g = co_await input;
        cout << "game coroutine: You guess " << g << ", res: " << res << endl;
        int result = res < g ? 1 : (res == g ? 0 : -1);
        cout << "game coroutine: result is " <<
            ((result == 1) ? "larger" :
             ((result == 0) ? "the same, Game finish!!!" : "smaller")) << endl;
        // co_await promise.yield_value();
        // 不中断协程执行，并且返回一个值
        if (result == 0) break;
    }
    
    // 标记游戏结束
    note.gameFinish = 1;

    // co_return之后，协程状态将会变为“完成”
    co_return res;
    // co_await promise.final_suspend();
    //      destruct promise p
    //      destruct parameters in coroutine frame
    //      destroy coroutine state
}

// Input是另一个协程实现
GameCoroutine Input(Note& note) {
    int res = 0;
    cout << "input coroutine: Init Finish" << endl;
    while (true) {
        // 游戏结束，就可以结束协程了
        if (note.gameFinish == 1) {
            co_return res;
        }
        std::cin >> note.guess;
        cout << "input coroutine: input " << note.guess << endl;
        co_yield note.guess;
    }
}

void mainThread() {
    // 协程件共享变量
    Note note = {};
    bool guessCoroutineDestory = false;
    bool inputCoroutineDestory = false;
    // 创建两个协程
    auto guessCoroutine = Guess(note);
    auto inputCoroutine = Input(note);
    cout << "main: make a guess" << endl;
    // 用主线程实现简单的协程调度，来调度两个协程
    while (true) {
        // 调度
        if (!guessCoroutineDestory) {
            guessCoroutine.handle.resume();
        }
        if (!inputCoroutineDestory) {
            inputCoroutine.handle.resume();
        }
        // 判断是否执行完协程，并销毁
        if (!guessCoroutineDestory && guessCoroutine.handle.done()) {
            cout << "main: the [guess coroutine] result is " << guessCoroutine.handle.promise()._res << endl;
            // 销毁后，guessCoroutine.handle.done()将返回值将是未定义值，因此不能再次使用
            guessCoroutine.handle.destroy();
            guessCoroutineDestory = true;
        }
        if (!inputCoroutineDestory && inputCoroutine.handle.done()) {
            cout << "main: the [input coroutine] result is " << inputCoroutine.handle.promise()._res << endl;
            inputCoroutine.handle.destroy();
            inputCoroutineDestory = true;
            break;
        }
    }
}

int main(int argc, const char * argv[]) {
    srand((uint)time(nullptr));

    std::thread game = std::thread(mainThread);
    game.join();
    
    return 0;
}

