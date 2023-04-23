#!/bin/sh

touch tmp/a
echo '1+1' | bc >> tmp/a
cat tmp/a