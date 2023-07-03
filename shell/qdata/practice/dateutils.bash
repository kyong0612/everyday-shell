#!/bin/bash

apt-get install -y dateutils

echo 日付の差を求める
detautils.ddiff 2020-01-01 2020-01-03

echo 日付を列挙する
dateutils.dseq 2020-01-01 2020-01-03

echo n日後を求める
dateutils.dadd 2020-01-01 2

echo UTCの時刻を別のタイムゾーンの時刻に変換する
echo 2020-01-01 00:00:00 |
    dateutils.dconv --zone America/New_York 2019-12-31T19:00:00

echo 2020年8月14日の直後の日曜日を求める
dateutils.dround 2020-08-14 +Sun

echo 2020年8月14日の直前の日曜日を求める
dateutils.dround 2020-08-14 -- -Sun
