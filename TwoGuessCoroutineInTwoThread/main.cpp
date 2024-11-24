//
//  main.cpp
//  TwoCoroutineInTwoThread
//
//  Created by Qiangwei Luo on 2024/11/21.
//

#include <iostream>
#include <coroutine>
#include <thread>
#include <condition_variable>
#include <mutex>
#include <stdio.h>
#include <unistd.h>

using namespace std;

// Some Sync Data
struct Note {
    int guess;
    int gameFinish;
    std::condition_variable cv; // 条件变量
    std::mutex mtx;             // 互斥锁
    bool inputReady = false;    // 新的输入是否就绪
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

    // 构造时，调用get_return_object赋值，coroutine_handle<promise_type>只能有一个这样的成员,
    // 如果有两个这种类型的成员，会只赋值给结构体中第一个，第二个不会被初始化！
    coroutine_handle<promise_type> handle; // _h.resume(), _h()
    
};

// Awaitable接口，指定一系列方法控制co_await表达式的语义。
//      当一个值被co_await时，代码会被转换成awaitable对象的一系列方法的调用。
//      - 可以控制是否挂起当前协程。（await_ready，true是不挂起，false是挂起）
//      - 协程恢复时，返回的值（await_resume）
struct Input {
    Note& _in;
    
    // 如果用户已经输入了数字，那么继续运行
    bool await_ready() {
        std::unique_lock<std::mutex> lock(_in.mtx);
        return _in.inputReady;
    }
    
    // 如果当前游戏需要用户输入一个数字，那么挂起当前协程对应的线程，等待用户输入后再开始运行
    void await_suspend(coroutine_handle<GameCoroutine::promise_type> h) {
        std::unique_lock<std::mutex> lock(_in.mtx);
        _in.cv.wait(lock, [&]() { return _in.inputReady; });
        _in.inputReady = false;
    }
    
    // 返回一个用户输入的数字
    int await_resume() { return _in.guess; }
};

// 用于InputCoroutine等待用户需要输入使用的Awaitable接口
struct LockInput {
    Note& _in;

    // 【输入】协程如果发现游戏需要输入或者已经结束了，那么继续执行Input协程获取用户输入，否则挂起Input协程
    bool await_ready() {
        std::unique_lock<std::mutex> lock(_in.mtx);
        return !_in.inputReady || _in.gameFinish;
    }

    // 如果挂起，挂起当前协程对应的【线程】，等待需要输入的时候继续运行
    void await_suspend(coroutine_handle<GameCoroutine::promise_type> h) {
        std::unique_lock<std::mutex> lock(_in.mtx);
        _in.cv.wait(lock, [&]() { return !_in.inputReady; });
    }

    int await_resume() { return 0; }
};


// Guess是一个协程实现
GameCoroutine Guess(Note& note) {
    // GameCoroutine::promise_type promise;
    // GameCoroutine ret = promise.get_return_object();
    // co_await promise.initial_suspend();
    int res = (rand() % 30) + 1;
    // 通过note建立数据交互联系，主要是用于获取协程调用者传入的值
    Input input{ note };
    cout << "game coroutine: Init Finish" << endl;
    while (true) {
        int g = co_await input;
        note.cv.notify_one();
        cout << "game coroutine: You guess " << g << ", res: " << res << endl;
        int result = res < g ? 1 : (res == g ? 0 : -1);
        cout << "game coroutine: result is " <<
            ((result == 1) ? "larger" :
             ((result == 0) ? "the same, Game finish!!!" : "smaller")) << endl;
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
    LockInput lockInput { note };
    cout << "input coroutine: Init Finish" << endl;
    while (true) {
        co_await lockInput;
        if (note.gameFinish) {
            break;
        }
        std::cin >> note.guess;
        cout << "input coroutine: input " << note.guess << endl;
        note.inputReady = true;
        note.cv.notify_one();
    }
    co_return res;
}

// 分析协程运行的共同点
// 1. 初始化，这个可以移动到线程外完成，由主线程持有初始化对象
// 2. 协程初始化后处于暂停状态，两个的协程都是通过resume让他们继续执行即可
//    - resume
void CoroutineThread(GameCoroutine& coroutine, std::string name) {
    while (!coroutine.handle.done()) {
        coroutine.handle.resume();
    }
    cout << "the coroutine " << name << " result is " << coroutine.handle.promise()._res << endl;
    coroutine.handle.destroy();
}

int main(int argc, const char * argv[]) {
    srand((uint)time(nullptr));
    // 协程件共享变量
    Note note = {};
    // 创建两个协程
    auto guessCoroutine = Guess(note);
    auto inputCoroutine = Input(note);
    cout << "main: make a guess" << endl;

    std::thread game = std::thread(CoroutineThread, std::ref(guessCoroutine), "guess");
    std::thread input = std::thread(CoroutineThread, std::ref(inputCoroutine), "input");
    game.join();
    input.join();
    
    return 0;
}

