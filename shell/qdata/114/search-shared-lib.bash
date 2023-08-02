#!/bin/bash


# tail -f /dev/null &

echo "共有ライブラリの探索"

cat /proc/76/maps | awk '{print $NF}' | grep '\.so' | sort | uniq
