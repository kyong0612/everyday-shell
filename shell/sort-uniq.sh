#!/bin/sh

seq 5 | awk '{print $1%2?"奇数":"偶数"}' | sort | uniq -c

echo "sort -k2,2nをパイプで接続"
seq 5 | awk '{print $1%2?"奇数":"偶数"}' | sort | uniq -c | sort -k2,2n