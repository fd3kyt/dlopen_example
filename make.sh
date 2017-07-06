#!/usr/bin/env bash

function lowercase(){
    string=$*
    echo "$string" | tr '[:upper:]' '[:lower:]'
}

if [[ $# -gt 0 ]];then
    build_type=$(lowercase "$1")               # ignore other args

    if [[ $build_type == "debug" ]] || [[ $build_type == "release" ]];then
        build_dir_name="$build_type"
        build_extra_flag="-DCMAKE_BUILD_TYPE=$build_type"
    else
        echo "unknown build type $build_type, exit..."
        exit 1
    fi
else
    build_dir_name="build"
    build_extra_flag=""
fi

# cd build/;cmake .. && make && ctest
mkdir -p $build_dir_name &&
    cd $build_dir_name/ &&
    cmake $build_extra_flag .. && make
