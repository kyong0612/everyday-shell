#!/bin/bash

# 「.」は正規表現では「任意の1文字」を表す  
# 「\.」は「.」を表す
grep "\.exe$" files.txt


echo "別解-1"
cat files.txt | grep "\.exe$"

echo "別解-2"
cat files.txt | sed -n '/\.exe$/p'

echo "別解-3"
cat files.txt | awk '/\.exe$/'