# A trival example of linux dynamic loading (dlopen())

## What is this?
A small example of linux dlopen() command. Changed from the one in [dlopen manual](http://man7.org/linux/man-pages/man3/dlopen.3.html). Differences:

1. Load a newly defined library instead of the system library.
2. Use cmake.

## Dynamic loading?
See [Wiki: Dynamic loading](https://en.wikipedia.org/wiki/Dynamic_loading).

Notice that here the main program is not linked with the library `my_lib`. Instead, it find and load it with its name at run time, then find a function in the library with the name and call it.

I put the executable and the library together and even build them
together just for convenience. In practice, the program may not have
any knowledge of the library at compile time. This is usually used to
implement the extension system.

## Usage
### Have it run
```bash
git clone https://github.com/fd3kyt/dlopen_example.git
cd dlopen_example
# wrap with parentheses to keep current working directory
(mkdir -p build && cd build && cmake .. && make)
LD_LIBRARY_PATH="./build/src/" ./build/src/main
```

### Read the files
* src/
  * `main.cc` : example code of using `dlopen()`.
  * `my_lib.cc` : how to write a library for dynamic loading?
    * Write C functions (`extern "C"` if c++)
  * `CMakeLists.txt`
    * link `${CMAKE_DL_LIBS}` to the executable
    * create a shared library in cmake : the `SHARED` flag in add_library

