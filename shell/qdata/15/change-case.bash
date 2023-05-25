#!/bin/bash

# パイプから変数に文字を取り込む
echo I am perfect human | while read a; do echo $a; done;


echo "### bashコマンドを使用する ###"
echo I am a perfect human | bash -c 'read a; echo $a'


echo "### サブシェルを使用する ###"
echo I am a perfect human | (read a; echo $a)

# echo "### to uppercase ###"
# echo I am a perfect human | (read a; echo ${a^^})

echo ""
echo pen-pineapple-apple-pen | (IFS=-; read -a w; echo "${w[*]^}")
