#!/bin/bash


set -eu

check=`expr $1 + $2`
expr 1 + $check >/dev/null 2>&1
case $? in
  0 ) echo "[\$?=$?] 数字が入力されました -> $check" ;;
  * ) echo "[\$?=$?] 数字以外が入力されました -> $check" ;;
esac

m=$1

if [ $2 -lt $m ];then
    m=$2
fi

set +e

while [ $m -ne 0 ]
    do
        x=`expr $1 % $m`
        y=`expr $2 % $m`
    if [ $x -eq 0 -a $y -eq 0 ];then
        echo gcd of $1 and $2 is $m
        break
        fi
    m=`expr $m - 1`
    done