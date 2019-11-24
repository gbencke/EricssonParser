#!/bin/bash

[ -d "./3rdparty/antlr4_runtime/runtime/Cpp/build" ] && rm -rf ./3rdparty/antlr4_runtime/runtime/Cpp/build

mkdir ./3rdparty/antlr4_runtime/runtime/Cpp/build
cd ./3rdparty/antlr4_runtime/runtime/Cpp/build
cmake ..
make clean
make

cd ../../../../../
make



