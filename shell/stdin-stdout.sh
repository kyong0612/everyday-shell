#!/bin/sh

ls 1> tmp/a


echo "ファイルaの行数をカウント"
wc -l < tmp/a
wc -l 0< tmp/a


sed -x 2> tmp/b

echo "sedの説明文をコマンドに渡したい時"
sed -x 2>&1 | wc -l