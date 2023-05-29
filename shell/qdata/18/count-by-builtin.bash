#!/bin/bash

# declare -A x; IFS=:; while read {a..g};do x[$g]+=.;done < /etc/passwd; for s in ${!x[@]}; do echo $s ${#x[$s]}; done; unset x

# echo "consider space"
# declare -A x
# IFS=:
# while read {a..g}; do [["$g" = ""]] || x[$g]+=.; done </etc/passwd
# for s in ${!x[@]}; do echo $s ${#x[$s]}; done
# unset x

IFS=:
while read in p u g e d shell; do
    case ${shell} in
    */nologin)
        nologin=$((${nologin} + 1))
        ;;
    */bash)
        bash=$((${bash} + 1))
        ;;
    esac
done </etc/passwd
echo "nologin:"${nologin}
echo "bash:" ${bash}
