#!/usr/bin/env bash
# 字符串常用比较方式

# =  equals
# != not equals

str1=$1
str2=$2


if [ "$str1" = "$str2" ]; then
  echo "equals"
fi
if [ "$str1" != "$str2" ]; then
  echo "not equals"
fi
if [ -n "$str1" ]; then
  echo "str1 is not empty"
fi
if [ -z "$str1" ]; then
  echo "str1 is empty"
fi
if [ -n "$str2" ]; then
  echo "str2 is not empty"
fi
if [ -z "$str2" ]; then
  echo "str2 is empty"
fi