#!/bin/sh


echo 正規表現
seq 5 | awk '/[24]/'

echo C言語のような条件式で偶数を抽出
seq 5 | awk '$1%2==0'

echo C言語のようにprintfで処理を書く
seq 5 | awk '$1%2==0{printf("%s 偶数\n",$1)}'


echo "ルール(条件:パターン, 処理:アクションの組み)を2つ以上並べる"
seq 5 | awk '$1%2==0{print $1,"偶数"}$1%2{print $1,"奇数"}'


echo "複数パターンを書く"
seq 5 | awk 'BEGIN{a=0}$1%2==0{print $1,"偶数"}$1%2{print $1,"奇数"}{a+=$1}END{print "合計",a}'