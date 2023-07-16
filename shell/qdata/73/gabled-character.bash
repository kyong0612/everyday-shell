#!/bin/bash

echo "### 文字化けの再現 ###"
LANG=C unzip 秘密の圧縮ファイル.zip

ls

echo "### 文字コードを調べる ###"
ls | while read f; do
    echo -n $f:
    echo $f | nkf -g
done

echo "### 置換したいファイルのリストを作る ###"
ls | grep -vaE "zip$|bash"

echo "### ファイル名を置換 ###"
ls | grep -vaE "zip$|bash" | while read f; do mv $f $(nkf <<< $f); done

ls 
