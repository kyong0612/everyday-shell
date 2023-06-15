#!/bin/bash

echo 我々はシェル芸人だ。 \
| mecab \
| awk -F, '{print $(NF-1)}' \
| tr -d \\n \
| sed 's/...$/\n/' \
| nkf --hiragana”

echo おまえもしぇるげいにんにしてやろうか。 \
| kkc \
| grep -oP '(?<=<)[^<]*(?=/)' \
| paste -sd ''

echo 我々ばシェル芸人だ \
| trans ja:en \
| sed -n 4p

