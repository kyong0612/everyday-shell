#!/bin/bash

for i in $(
    cd /usr
    echo *
); do echo $i; done


echo "##### 別解 ######"
for f in /usr/*; do echo ${f##*/}; done

echo "##### 別解2 #####"
a={/usr/*};echo -e ${a[@]/\/usr\//\\n}
