#!/bin/bash

cd build/
echo ""
echo "Test with mainA (link sequence: -la -le)"
./mainA
echo ""
echo "Test with mainA (link sequence: -le -la)"
./mainE
echo ""
echo "Test with mainA_nf (link sequence: -la_nf -le_nf)"
./mainA_nf
echo ""
echo "Test with mainE_nf (link sequence: -le_nf -la_nf)"
./mainE_nf
