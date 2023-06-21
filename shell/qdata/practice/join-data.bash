#!/bin/bash

echo "小問1"
join master.txt transaction.txt

echo "小問2"
join -a master.txt transaction.txt
