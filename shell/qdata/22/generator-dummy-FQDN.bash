#!/bin/bash

echo "##### 気合いのブレース展開 #####"
echo {1,2,3,4,5,6,7,8,9,10}.{co.jp,com,net,org,co.uk,co.kr,co.in,co.id,co.th,co.za}

echo "##### 100個のダミーFQDNを生成 #####"
echo {email,blog,eng,www,help,sub,ns,}.{robotics,ojisan,yamada,ueda,nakamura,tashiro,blacknon}.{co.jp,com,tech,org,jp,go.jp,com.tw,asia} \
| tr ' ' '\n' \
| sort -R \
| head -n 100 \
| sed 's/^\.//'


