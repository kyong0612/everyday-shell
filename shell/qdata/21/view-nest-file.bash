#!/bin/bash

echo "##### find + grep #####"
find -type f | grep -v "\./dir_b/d" | sort


echo "##### use globstar ######"
shopt -s globstar
echo dir_a/* dir_b/* dir_c/** | grep -o "[^ ]*[0-]"
