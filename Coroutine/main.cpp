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
        int _in;
        suspend_never initial_suspend() { return {}; }
        suspend_never final_suspend() noexcept { return {}; }
        void unhandled_exception() {}
        CoRet get_return_object() {
            return  {
                coroutine_handle<promise_type>::from_promise(*this)
            };
        }
    };
    
    coroutine_handle<promise_type> _h; // _h.resume() = _h()
};

struct Note {
    int guess;
};

struct Input {
    int* _in;
    bool await_ready() { return false; }
    void await_suspend(coroutine_handle<CoRet::promise_type> h) {
//        h.promise()
        _in = &h.promise()._in;
    }
    int await_resume() { return *_in; }
};

CoRet Guess() {
    Input input;
    int g = co_await input;
    cout << "coroutine: You guess " << g << endl;
}

int main(int argc, const char * argv[]) {
    auto ret = Guess();
    cout << "main: make a guess ..." << endl;
    ret._h.promise()._in = 100;
    ret._h.resume();
    return 0;
}
