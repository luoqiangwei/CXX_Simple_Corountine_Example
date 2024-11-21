//
//  main.cpp
//  NetCoroutine
//
//  Created by Qiangwei Luo on 2024/9/19.
//

#include <iostream>
#include <coroutine>
#include <string>
#include <curl/curl.h>
#include <memory>

using namespace std;

// 协程的Promise类型
struct HTTPResponse {
    struct promise_type {
        string response;
        CURLcode res;

        // 用于挂起和恢复的协程控制
        suspend_never initial_suspend() { return {}; }
        suspend_always final_suspend() noexcept { return {}; }
        void unhandled_exception() { std::terminate(); }

        HTTPResponse get_return_object() {
            return {coroutine_handle<promise_type>::from_promise(*this)};
        }

        void return_void() {}

        auto await_transform(suspend_always result) {
            return result;  // 挂起协程，等待恢复
        }

        string await_resume() {
            return response;
        }
    };
    coroutine_handle<promise_type> handle;

    ~HTTPResponse() {
        if (handle) handle.destroy();
    }
};

// 异步HTTP请求协程
HTTPResponse FetchURL(const std::string& url) {
    CURL* curl = curl_easy_init();
    if (!curl) {
        throw std::runtime_error("CURL initialization failed");
    }

    struct curl_slist* headers = nullptr;
    headers = curl_slist_append(headers, "Accept: */*");

    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, [](char* ptr, size_t size, size_t nmemb, std::string* data) {
        data->append(ptr, size * nmemb);
        return size * nmemb;
    });

    auto response = std::make_unique<std::string>();
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, response.get());

    CURLcode result = curl_easy_perform(curl);  // 同步执行CURL
    if (result != CURLE_OK) {
        throw std::runtime_error(curl_easy_strerror(result));
    }

    auto final_response = std::move(*response);
    curl_easy_cleanup(curl);
    curl_slist_free_all(headers);

    // 挂起协程，返回HTTP响应结果
    co_await std::suspend_always();  // 在此处挂起协程

    // 通过 this 获取 promise 对象
    auto& promise = co_await std::coroutine_handle<promise_type>::from_address(this);
    promise.response = std::move(final_response);  // 保存最终响应
    co_return;
}

int main() {
    auto responseCoro = FetchURL("http://example.com");

    // 恢复协程并处理HTTP响应
    while (!responseCoro.handle.done()) {
        responseCoro.handle.resume();  // 显式恢复协程
    }

    std::cout << "Response: " << responseCoro.handle.promise().response << std::endl;
    return 0;
}
