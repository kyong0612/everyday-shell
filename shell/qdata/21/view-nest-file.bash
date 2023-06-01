#!/bin/bash

echo "##### find + grep #####"
find -type f | grep -v "\./dir_b/d" | sort


# root@a75b77caf855:/shell/qdata/21# ./view-nest-file.bash
# ##### find + grep #####
# ./dir_a/file_1
# ./dir_a/file_2
# ./dir_b/file_1
# ./dir_b/file_2
# ./dir_c/dir_b/dir_a/file_1
# ./dir_c/dir_b/file_1
# ./dir_c/dir_b/file_2
# ./view-nest-file.bash


echo "##### use globstar ######"
shopt -s globstar
echo dir_a/* dir_b/* dir_c/** | grep -o "[^ ]*[0-]"
