#!/bin/bash

cat message.txt \
| sed 's/)(/)\n(/g' \
| grep -P '^(\(\g<1>\)|[^()]+)$' \
| tr -d '()' \
| paste - -sd ''
