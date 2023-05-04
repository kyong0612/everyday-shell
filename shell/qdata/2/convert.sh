#!/bin/sh

# SEE: how to use imagemagick
# https://imagemagick.org/script/convert.ph
find img/*.png \
| sed 's/.png//g' \
| xargs -I {} magick {}.png {}.jpg


ls img/*.png \
| sed 's/\.png$//' \
| xargs -I@ convert @.png @.jpg

ls img/*.jpg

echo "処理時間の計測"
time ls img/*.png \
| sed 's/\.png$//' \
| xargs -I@ convert @.png @.jpg


echo "より早く処理をする"
time ls img/*.png \
| sed 's/\.png$//' \
| xargs -P2 -I@ convert @.png @.jpg


echo "限界まで並列実行する"
echo "nproc の代わりに sysctl -n hw.logicalcpu"
time find img/*.png \
| sed 's/.png$//g' \
| xargs -P$(sysctl -n hw.logicalcpu) -I@ convert @.png @.jpg

echo "convert ではなく mogrify を使う"
mogrify -format jpg img/*.png

echo "GNU parrallelによる並列処理"
time parallel 'convert {} {.}.jpg' ::: img/*.png