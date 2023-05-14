#!/bin/sh

# # 改行コードを削除できればOKだが-zが存在しない...
# cat gijiroku.txt \
# | sed 's/すず/鈴木:/; s/さと/佐藤:/; s/やま/山田:/'


cat gijiroku.txt \
| xargs -n2 \
| sed 's/^すず/鈴木/; s/^さと/佐藤/; s/^やま/山田/; s/ /:/; s/$/\n/'