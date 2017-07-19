add_executable(main main.cc)
target_link_libraries(main ${CMAKE_DL_LIBS})

add_library(my_lib SHARED my_lib.cc )
