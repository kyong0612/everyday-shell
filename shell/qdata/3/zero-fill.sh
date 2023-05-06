#!/bin/sh

./init.sh

cd ./tmp

echo "count files"
find . | wc -l # expect 10001


echo "zero fill"
time ls -U | xargs -P2 rename 's/^/0000000/;s/0*([0-9]{7})/$1/'

ls


echo "clean up"
ls -U | xargs -P2 rm
