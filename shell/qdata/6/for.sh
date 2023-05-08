#!/bin/sh

# seq 5 \
# | awk '{for(i=1;i<$1;i++){printf " "};print "x"}' \
# | tac

echo "    x\n   x\n  x\n x\nx"

seq 5 | awk '{a++;for(i=5;i>a;i--){printf " "};print "x"}'

seq 5 | awk '{for(i=5;i>NR;i--){printf " "};print "x"}'

seq 5 | awk '{for(i=5;i>NR;i--){printf " "};print "x"}'

seq 5 -1 1 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}'