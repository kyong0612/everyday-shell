#!/bin/sh

# SEE: how to use imagemagick
# https://imagemagick.org/script/convert.ph


find img/*.png \
| sed 's/.png//g' \
| xargs -I {} magick {}.png {}.jpg