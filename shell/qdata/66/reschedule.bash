#!/bin/bash

echo '今'
date

echo '次の水曜'
date -d 'next week'

echo '翌週の金曜'
date -d 'next week next Friday'

echo '翌週の金曜の前日'
date -d 'next week next friday yesterday'


nextwd() {
    read d
    date -d "$d $((7 - $(date -d $d +%w) + $(date -d $1 +%w))) day" +%F
}

echo '2017-09-18の翌週火曜日'
echo 2017-09-18 | nextwd Tue

echo 'その翌週の金曜日'
echo 2017-09-18 | nextwd Tue | nextwd Fri

echo 'その前日'
echo 2017-09-18 | nextwd Tue | nextwd Fri | xargs -I@ date -d '@ yesterday' +%F
