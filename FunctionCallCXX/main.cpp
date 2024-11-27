//
//  main.cpp
//  FunctionCallCXX
//
//  Created by Qiangwei Luo on 2024/11/26.
//

#include <iostream>
#include <thread>

void print(int sum) {
    printf("%d\n", sum);
}

int sum(int a, int b) {
    int c = a + b;
    print(c);
    return c;
}

int main(int argc, const char * argv[]) {
    int a = 4;
    int b = 5;
    std::thread t = std::thread(sum, 2, 1);
    sum(a, b);
    t.join();
    return 0;
}
