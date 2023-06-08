#!/bin/bash

echo "Q1"
echo '(bash|nologin)' | grep -G '^(bash|nologin)$'


echo "Q2"
# ！が全角でないと動かない
echo 'ああああああ！！' | grep -E '！{2}'



echo "Q3"
echo 処す？処す? | grep -o -G '処す?'

echo "Q4"
echo C/C++ | grep -o -E C.+


echo "Q5"
echo 36 | grep -P '\d'
# echo 36 | grep '[0-9]'

echo "Q6"
echo とまとまとまと | grep -o -P 'と(?=まと)' | uniq -c

echo "Q7"
echo 123abcあいう-45deえお | grep -E '(\d+\w+[あ-お]+)-\g<1>'

