#!/bin/bash

gcc -o build/printa.o -c printa.c
gcc -o build/liba.o -c liba.c
gcc -shared -fPIC -Wl,--export-all-symbols -o build/liba.dll build/printa.o build/liba.o
gcc -o build/printe.o -c printe.c
gcc -o build/libe.o -c libe.c
gcc -shared -fPIC -Wl,--export-all-symbols -o build/libe.dll build/printe.o build/libe.o

gcc -shared -fPIC -o build/liba_nf.dll printa.c liba.c
gcc -shared -fPIC -o build/libe_nf.dll printe.c libe.c

gcc -o build/mainE.exe main.c -Wl,-rpath=./ -L./build -le -la
gcc -o build/mainA.exe main.c -Wl,-rpath=./ -L./build -la -le

gcc -o build/mainE_nf.exe main.c -Wl,-rpath=./ -L./build -le_nf -la_nf
gcc -o build/mainA_nf.exe main.c -Wl,-rpath=./ -L./build -la_nf -le_nf
