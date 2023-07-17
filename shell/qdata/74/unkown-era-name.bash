#!/bin/bash

cat days.txt |
    awk -F'[^0-9]' '{printf "%d %02d %02d\n",$1,$2,$3}' |
    awk '{if($1$2<"201905"){a="337B";$1-+1988}else{a="32FF";$1-=2018}print "echo -e \\\\U"a,$1"年"$2"月"$3"日"}' |
    bash |
    sed 's/ 1年/ 元年/' |
    tr -d ' ' |
    sed 's/年0/年/;s/月0/月/'
