#!/bin/bash

echo "##### 行またぎの文字列を含めて「私財法」すべてを「おれのもの」に置換 #####"
cat konden | sed -zE 's/私\n?財\n?法/おれのもの/g'

echo "##### 行またぎの文字列「墾田永年私財法」を改行を残したまま抜き出す #####"
cat konden | grep -ozP '墾\n?田\n?永\n?年\n?私\n?財\n?法\n?'

echo "##### 別解 #####"
cat konden | grep -ozP $(sed 's/./&\\n?/g' <<< 墾田永年私財法)
