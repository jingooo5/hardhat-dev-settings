#!/bin/sh

DIR=`dirname "$0"`
echo $DIR
cd $DIR
cd ../
git checkout latest
line=$(ncu | wc -l)

if [ $line -gt 4 ]
then

    log=$(ncu -u)

    FILENAME=$(date +%Y%m%d%H%M%S).txt
    echo ${log} >> ~/Documents/GitHub/hardhat-dev-settings/logs/${FILENAME}

    git add ./package.json
    git commit -m "update packages"
    git push

else
    echo "already updated"
fi

git checkout main