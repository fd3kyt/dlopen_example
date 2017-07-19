cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project("new_project")

enable_testing()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_subdirectory(src)
