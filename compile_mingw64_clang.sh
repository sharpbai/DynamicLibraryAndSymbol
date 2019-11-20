#!/bin/bash

clang -o build/printa.o -c printa.c
clang -o build/liba.o -c liba.c
clang -shared -Wl,--export-all-symbols -o build/liba.dll build/printa.o build/liba.o
clang -o build/printe.o -c printe.c
clang -o build/libe.o -c libe.c
clang -shared -Wl,--export-all-symbols -o build/libe.dll build/printe.o build/libe.o

clang -shared -o build/liba_nf.dll printa.c liba.c
clang -shared -o build/libe_nf.dll printe.c libe.c

clang -o build/mainE.exe main.c -Wl,-rpath=./ -L./build -le -la
clang -o build/mainA.exe main.c -Wl,-rpath=./ -L./build -la -le

clang -o build/mainE_nf.exe main.c -Wl,-rpath=./ -L./build -le_nf -la_nf
clang -o build/mainA_nf.exe main.c -Wl,-rpath=./ -L./build -la_nf -le_nf
