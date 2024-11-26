cmake_minimum_required(VERSION 3.5)

project(IOUring_Coroutine LANGUAGES CXX)

# 添加宏定义
# add_definitions(-D__IOURING__)
add_definitions(-D__AIO__)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(IOUring_Coroutine main.cpp)

target_link_libraries(IOUring_Coroutine PRIVATE uring)

include(GNUInstallDirs)
install(TARGETS IOUring_Coroutine
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
