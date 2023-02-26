#!/bin/bash
status_log=$(git status -sb)
# 这里使用的是 master 分支，根据需求自行修改
if [ "$status_log" == "## main...create/main" ];then
  echo "nothing to commit, working tree clean"
else
  git add .&&git commit -m "update by github actions"&&git push create main
fi
