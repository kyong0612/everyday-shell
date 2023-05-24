#!/bin/bash


[ -e unfile ] || touch unfile

# 読み書きモードでファイルを開く(unfileが存在すれば読み込み、存在しなければ作る)
cat <> unfile
echo $?

