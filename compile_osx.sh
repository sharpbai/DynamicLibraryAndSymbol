#!/bin/bash

gcc -dynamiclib -o build/liba.dylib -flat_namespace printa.c liba.c
gcc -dynamiclib -o build/libe.dylib -flat_namespace printe.c libe.c

gcc -dynamiclib -o build/liba_nf.dylib liba.c
gcc -dynamiclib -o build/libe_nf.dylib libe.c

gcc -o build/mainE main.c -L./build -le -la
gcc -o build/mainA main.c -L./build -la -le

gcc -o build/mainE_nf main.c -L./build -le_nf -la_nf
gcc -o build/mainA_nf main.c -L./build -la_nf -le_nf
