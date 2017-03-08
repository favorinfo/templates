#!/bin/bash
#author      : Jam < ops@doat.cc >
#version     : 1.0
#description : 本脚本主要用来处理Pycharm的模板安装

PY_VERSION=${PY_VERSION:=2016.3}
TMP_URL=${TMP_URL:=https://raw.githubusercontent.com/favorinfo/templates/master}
TMP_PATH=${TMP_PATH:=Library/Preferences/PyCharm${PY_VERSION}/templates}
ITEMS="Jam Model DjangoHTML"

for item in $ITEMS
do 
    tmp=$TMP_PATH/$item.xml
    if [ "$FORCE" ] || [ ! -e $tmp ]; then
        echo "准备安装模板 $item.xml..."
        curl -sfLo $tmp $TMP_URL/$item.xml
    fi
done    