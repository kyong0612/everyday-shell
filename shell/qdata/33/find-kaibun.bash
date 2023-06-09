#!/bin/bash

diff <(grep -o . kaibun) <(grep -o . kaibun | tac)
echo 差分がない場合status cocdeが$? # expect 0

diff <(grep -o . not_kaibun) <(grep -o . not_kaibun | tac)
echo 差分がある場合のstatus codeが$? # expect 1

