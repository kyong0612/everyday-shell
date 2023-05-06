#!/bin/sh

echo "generate 10000 files"
mkdir ./tmp
cd ./tmp
seq 10000 | xargs -P2 touch
