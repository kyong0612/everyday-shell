#!/bin/bash

cat excel_hogan.txt |
     sed 's/./&_/g' |
     sed 's/"/""""/g' |
     sed 's/,/","/g' |
     tr _ , |
     nkf -sLwx > hoge.csv
