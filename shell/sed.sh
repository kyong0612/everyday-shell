#!/bin/sh

echo クロロエチルエチルエーテル | sed 's/エ/メ/g'


echo クロロメチルエチルエーテル | sed -E 's/エチル/&&/g'