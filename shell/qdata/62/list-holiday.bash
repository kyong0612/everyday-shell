#!/bin/bash

apt-get install -y dateutils

# teipのinstallが若干面倒
apt install -y cargo clang
cargo install teip
alias teip='/root/.cargo/bin/teip'

nkf -wLux syukujitsu.csv |
    tail -n +2 |
    teip -d, -f 1 -- date -f- '+%Y-%m-%d' |
    awk -F- '$1>=2019&&$1<2022' |
    cat - <(dateutils.dseq 2019-01-01 2021-12-31 | sed 's/$/.@/') |
    sort -r |
    uniq -w 10 |
    tac
