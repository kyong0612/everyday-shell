#!/bin/bash

cat uni.txt |
    grep -o . |
    while read s; do
        echo -n $s" "
        echo -n $s | wc -c
    done

echo "別解"

cat uni.txt |
    grep -o . |
    LANG=C awk '{print $0,length($0)}'

