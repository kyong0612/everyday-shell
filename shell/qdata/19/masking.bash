#!/bin/bash

echo "start"
cat cardno

printf xxxx-xxxx 1<> cardno
cat cardno

echo "reset"
# FIXME: to dry
echo "$((1000 + RANDOM % 9999))-$((1000 + RANDOM % 9999))-$((1000 + RANDOM % 9999))-$((1000 + RANDOM % 9999))" > cardno
cat cardno

echo "別解"
IFS=-
a=($(<cardno))
echo xxxx-xxxx-${a[2]-${a[3]}} > cardno
cat cardno


echo "reset"
echo "$((1000 + RANDOM % 9999))-$((1000 + RANDOM % 9999))-$((1000 + RANDOM % 9999))-$((1000 + RANDOM % 9999))" > cardno
cat cardno

