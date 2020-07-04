#!/bin/sh


WORKDIR=/home/dake/kadai4

bash $WORKDIR/gcd.sh >/dev/null 2>&1
case $? in
  0 ) echo "[\$?=$?] succeeded!!" ;;
  * ) echo "[\$?=$?] ERROR! without argment!" ;;
esac

bash $WORKDIR/gcd.sh 1 >/dev/null 2>&1
case $? in
  0 ) echo "[\$?=$?] succeeded!!" ;;
  * ) echo "[\$?=$?] ERROR! Insufficient arguments!" ;;
esac

bash $WORKDIR/gcd.sh x y >/dev/null 2>&1
case $? in
  0 ) echo "[\$?=$?] succeeded!!" ;;
  * ) echo "[\$?=$?] ERRPR! Invalid argument!" ;;
esac

bash $WORKDIR/gcd.sh x 1 >/dev/null 2>&1
case $? in
  0 ) echo "[\$?=$?] succeeded!!" ;;
  * ) echo "[\$?=$?] ERRPR! Invalid argument!" ;;
esac

bash $WORKDIR/gcd.sh 10.1 5 >/dev/null 2>&1
case $? in
  0 ) echo "[\$?=$?] succeeded!!" ;;
  * ) echo "[\$?=$?] ERRPR! Invalid argument!" ;;
esac