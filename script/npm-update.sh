#!/bin/sh

line=$(ncu | wc -l)

if [ $line -gt 4 ]
then
    git checkout latest
    log=$(ncu -u)

    FILENAME=$(date +%Y%m%d%H%M%S).txt
    touch ./logs/${FILENAME}
    echo ${log} >> ./logs/${FILENAME}

else
    echo "already updated"
fi