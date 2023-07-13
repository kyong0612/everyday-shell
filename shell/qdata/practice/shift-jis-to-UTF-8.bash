#!/bin/bash


nkf shift_jis.txt

echo "####改行コードをLFにする####"
nkf -wLu shift_jis.txt


echo "#### 改行コードをLFにする + 半角カナを全角に変換しない####"
nkf -wLux shift_jis.txt

