#!/bin/sh

echo "1,2,3,4という名前の4個のディレクトリを作成"
seq 4 | xargs -I FILE mkdir tmp/FILE

echo "1,2,3,4という名前の4個のディレクトリを消去"
seq 4 | xargs -I FILE rm -r tmp/FILE

echo "1,3というディレクトリを事前に作っておいて、それぞれ2,4という名前に変更"
mkdir tmp/1 tmp/3
cd tmp && seq 4 | xargs -n2 mv && cd ..

echo "dir_1,dir_2,dir_3,dir_4という名前の4個のディレクトリを作成"
seq 4 | xargs -I FILE mkdir tmp/dir_FILE


echo "-eが出力されなくなる(はずだが出力されるw)"
awk 'BEGIN{print "-e 1 2 3"}'
awk 'BEGIN{print "-e 1 2 3"}' | xargs