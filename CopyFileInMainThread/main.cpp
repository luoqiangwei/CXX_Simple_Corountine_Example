//
//  main.cpp
//  CopyFileInMainThread
//
//  Created by Qiangwei Luo on 2024/11/24.
//

#include <iostream>
#include <filesystem>
#include <fstream>
#include <vector>
#include <thread>
#include <future>
#include <queue>

namespace fs = std::filesystem;

void copy_file1(const fs::path& src, const fs::path& dst) {
    std::ifstream in(src, std::ios::binary);
    std::ofstream out(dst, std::ios::binary);
    std::vector<char> buffer(1024);
    while (in.read(buffer.data(), buffer.size()) || in.gcount() > 0) {
        out.write(buffer.data(), in.gcount());
    }
    std::cout << "Copied: " << src << " -> " << dst << std::endl;
}

void copy_directory(const fs::path& src_dir, const fs::path& dst_dir) {
    for (const auto& entry : fs::recursive_directory_iterator(src_dir)) {
        const auto& src_path = entry.path();
        auto dst_path = dst_dir / fs::relative(src_path, src_dir);
        if (entry.is_directory()) {
            fs::create_directories(dst_path);
        } else if (entry.is_regular_file()) {
            copy_file1(src_path, dst_path);
        }
    }
}

int main() {
    fs::path src_dir = "/Users/luoqiangwei/Downloads/testa";
    fs::path dst_dir = "/Users/luoqiangwei/Downloads/testb";

    auto start = std::chrono::high_resolution_clock::now();
    copy_directory(src_dir, dst_dir);
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    std::cout << "Elapsed time: " << duration.count() << " milliseconds" << std::endl;
    // OUT: 3057 milliseconds
    //      2962 milliseconds

    return 0;
}
