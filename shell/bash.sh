#!/bin/sh

echo "bashによるメタプログラミング"
seq 4 | awk '{print"mkdir -p tmp/odd_"$1}' | bash