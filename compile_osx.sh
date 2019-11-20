#!/bin/bash

gcc -dynamiclib -o liba.dylib -flat_namespace printa.c liba.c
mv liba.dylib build/
gcc -dynamiclib -o libe.dylib -flat_namespace printe.c libe.c
mv libe.dylib build/

gcc -dynamiclib -o liba_nf.dylib printa.c liba.c
mv liba_nf.dylib build/
gcc -dynamiclib -o libe_nf.dylib printe.c libe.c
mv libe_nf.dylib build/

gcc -o build/mainE main.c -L./build -le -la
gcc -o build/mainA main.c -L./build -la -le

gcc -o build/mainE_nf main.c -L./build -le_nf -la_nf
gcc -o build/mainA_nf main.c -L./build -la_nf -le_nf
