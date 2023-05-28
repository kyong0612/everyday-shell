#!/bin/bash

# /etx/passwdを~/aにコピーする

# 素直パターン
while read in; do echo $in; done < /etc/passwd > ~/a
cat ~/a
rm -rf ~/a


