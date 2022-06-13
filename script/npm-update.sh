#!/bin/sh

line=$(ncu | wc -l)

if [ $line -gt 4 ]
then
    git checkout latest
    log=$(ncu -u)

    FILENAME=$(date +%Y%m%d%H%M%S).txt
    echo ${log} >> ~/Documents/GitHub/hardhat-dev-settings/logs/${FILENAME}

else
    echo "already updated"
fi