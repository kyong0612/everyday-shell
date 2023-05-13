#!/bin/sh

# 2016年12月24日21時台の最初のログから、2016年12月25日3時台の最初のログまで出力する
echo "sedを使用したパターン" 
time cat ./log_range.log \
| sort -k 4 \
| sed -n '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../p'


echo "awkを使用したパターン①"
time cat log_range.log \
| awk '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../'

echo "awkを使用したパターン②"
time cat log_range.log \
| awk '$4" "$5>="[24/Dec/2016 21:00:00]" && $4" "$5<"[25/Dec/2016 03:59:60]"'