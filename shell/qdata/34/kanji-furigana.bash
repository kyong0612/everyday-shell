#!/bin/bash

cat furigana.txt | sed -E 's/^(.*)(.*) ([^あ-ん]*)\2/\3 (\1) \2/'
