#!/bin/bash

# count=1
# while [ $count -le 100 ]; do
#     echo "羊が${count}匹"
#     count=$((count + 1))
#     sleep 1
# done

# seq 100 | while read count; do
#     echo "羊が${count}匹"
#     sleep 1
# done

# for n in $(seq 100); do
#     echo 羊が${n}匹
#     sleep 1
# done

# for n in {1..100}; do
#     echo 羊が${n}匹
#     sleep 1
# done

echo "ループを使わない"
seq 1 100 | xargs -I@ bash -c 'echo 羊が@匹; sleep 1'
seq -f 'echo 羊が%g匹; sleep 1' 100 | bash
