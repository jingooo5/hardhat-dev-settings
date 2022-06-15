#!/bin/sh

git checkout latest
line=$(ncu | wc -l)

if [ $line -gt 4 ]
then

    log=$(ncu -u)

    FILENAME=$(date +%Y%m%d%H%M%S).txt
    echo ${log} >> ~/Documents/GitHub/hardhat-dev-settings/logs/${FILENAME}

    git add .
    git commit -m "update packages"
    git push
    git checkout main
else
    echo "already updated"
fi