#!/bin/bash
#author      : Jam < ops@doat.cc >
#version     : 1.0
#description : 本脚本主要用来同步本地 PyCharm 配置文件

PY_VERSION=${PY_VERSION:=2016.3}
TMP_PATH=${TMP_PATH:=Library/Preferences/PyCharm${PY_VERSION}/templates}
ROOT=$(cd `dirname $0`; pwd)

cp $TMP_PATH/* $ROOT/*
git diff HEAD