#!/bin/bash

echo start

for row in $(cat fruits.json | jq -c '.Fruits[]'); do
    FILE="$(echo ${row} | jq -r '.Name').json"
    echo "gererate ${FILE}"
    touch ${FILE}

    echo ${row} | jq > ${FILE}

done

echo fin
