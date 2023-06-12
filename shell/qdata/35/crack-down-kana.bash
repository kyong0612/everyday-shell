#!/bin/bash

echo '###### length is number of bytes ######'

cat speech.txt \
| grep -Po '^.*?[ア-ン]{4}(?=[ア-ン])' \
| awk '{$2=$1}$1=length($2)'

