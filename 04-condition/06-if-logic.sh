#!/usr/bin/env bash

# 语法
# [ condition ] && [ condition ]
# [ condition ] || [ condition ]

file="/usr/local/java/web.out"

if [ -d "/usr/local/java" ] && [ -f "$file" ]; then
  tail $file
else
  echo "file not exists"
fi
