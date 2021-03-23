#!/usr/bin/env bash

# file的常用比较方式
# 1. -e file  文件存在
# 2. -d file 文件是一个文件夹
# 3. -f file 文件是一个文件
# 4. -r file 文件可读
# 5. -w file 文件可写
# 6. -x file 文件可执行
# 7. -O file 文件归属当前执行用户
# 8. -G file 文件所属组和当前用户所属组相同
# 9. file1 -nt file2  file1比file2新
# 10. file1 -ot file2 file1比file2旧

file1=$1

if [ -e "$file1" ]; then
  if [ -d "$file1" ]; then
    echo "file is a directory"
  fi
  if [ -f "$file1" ]; then
    echo "file is a file"
  fi
  if [ -r "$file1" ]; then
    echo "file is a readable"
  fi
  if [ -w "$file1" ]; then
    echo "file is a writeable"
  fi
  if [ -x "$file1" ]; then
    echo "file is a invokable"
  fi
  if [ -O "$file1" ]; then
    echo "file 's owner = $USER"
  fi
else
  echo "file not exists"
  exit 1
fi
