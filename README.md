# My cpp project template

## Usage
``` shell
mkdir my-new-bomb-project
cd my-new-bomb-project
git clone https://github.com/fd3kyt/cpp-project.git .
```

## script for build project
- ./make.sh
- ./make.sh debug
- ./make.sh release

## A script for this

``` shell
#!/usr/bin/env bash

set -e

project_name=$1

mkdir ${project_name}
cd ${project_name}
git clone https://github.com/fd3kyt/cpp-project.git .
git branch master
git checkout master
```
