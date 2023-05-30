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
    Note& _in;
    bool await_ready() { return false; }
    void await_suspend(coroutine_handle<CoRet::promise_type> h) {}
    int await_resume() { return _in.guess; }
};

CoRet Guess(Note& note) {
    Input input{ note };
    int g = co_await input;
    cout << "coroutine: You guess " << g << endl;
}

int main(int argc, const char * argv[]) {
    Note note;
    auto ret = Guess(note);
    cout << "main: make a guess ..." << endl;
    note.guess = 100;
    ret._h.resume();
    return 0;
}
