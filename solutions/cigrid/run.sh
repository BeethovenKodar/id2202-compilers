#!/bin/bash

make
./cigrid src/examples/test.txt --asm > a.asm
nasm -felf64 a.asm
gcc -no-pie a.o
./a.out
