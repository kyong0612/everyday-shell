#!/bin/bash

n="XYZ"
(for i in {A..C}; do
    n+=$i
    echo $n
done)
echo $n

# XYZA
# XYZAB
# XYZABC
# XYZABC
# XYZ

echo ""

n="XYZ"
for i in {A..C}; do
    n+=$i
    echo $n
done | cat
echo $n
