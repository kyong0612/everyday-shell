#!/bin/bash

echo a > hoge

ls -l hoge


seq 1 99 | while read i; do ln hoge $i; done

ls -l

echo "#### 2列目が100になる ####"
ls -l hoge

