#!/bin/bash

gcc -shared -fPIC -o build/liba.so printa.c liba.c
gcc -shared -fPIC -o build/libe.so printe.c libe.c

gcc -shared -fPIC -fvisibility=hidden -o build/liba_nf.so printa.c liba.c
gcc -shared -fPIC -fvisibility=hidden -o build/libe_nf.so printe.c libe.c

gcc -o build/mainE main.c -Wl,-rpath=./ -L./build -le -la
gcc -o build/mainA main.c -Wl,-rpath=./ -L./build -la -le

gcc -o build/mainE_nf main.c -Wl,-rpath=./ -L./build -le_nf -la_nf
gcc -o build/mainA_nf main.c -Wl,-rpath=./ -L./build -la_nf -le_nf
