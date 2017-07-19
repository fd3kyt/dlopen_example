cmake_minimum_required(VERSION 2.8)

project("try_dlopen")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_subdirectory(src)
