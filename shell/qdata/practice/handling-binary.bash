#!/bin/bash


echo "#### dumping binary data by xxd ####"
echo ❤️🍺 | iconv -f UTF-8 -t UTF-32 | xxd


echo "#### dumping binary data by od ####"
echo ❤️🍺 | iconv -f UTF-8 -t UTF-32 | od 


