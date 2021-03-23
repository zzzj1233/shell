#!/usr/bin/env bash

read -rp "y/n" -t 30 cho

case $cho in
"y" | "yes")
  echo "yes !"
  ;;
"n" | "not")
  echo "not !"
  ;;
# 相当于default
*)
  echo "what ???"
  ;;
esac
