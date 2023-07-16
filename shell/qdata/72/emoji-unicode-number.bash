#!/bin/bash

echo -e '\U1F363\U1F37A'

echo '👺👺' | hexdump


echo "外部コマンドのechoでは\U...という表記が使えない"
/bin/echo -e '\U1F363\U1F37A'

echo "ANSI-C Quotingを使うと使える"
/bin/echo $'\U1F363\U1F37A'
