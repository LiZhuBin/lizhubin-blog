#!/usr/bin/env bash
# useage: addmdfile + （文件位置）
# 用于在生成 huog chapter 模板文本
if [ $# -eq 1  ]
    then msg="$1"
    hugo new --kind chapter $msg
fi