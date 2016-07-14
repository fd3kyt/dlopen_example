link_libraries(gtest gtest_main)

# googletest-distribution 是 googletest 根目录下 cmake 中项目名
include_directories("${googletest-distribution}/googletest/include")

include_directories("../src/")

# add_executable (my_thread_pool_test my_thread_pool_test.cc)
# target_link_libraries(my_thread_pool_test my_thread_pool)
# add_test(my_thread_pool_test my_thread_pool_test --gtest_color=yes)
