#!/bin/bash

FILE=$1
CONT=`cat $FILE`
for f in $CONT;do
    hd=`echo $f | cut -d"~" -f2`
    address=`echo $f | cut -d"~" -f1`
    youtube-dl -f $hd -o "%(title)s.%(ext)s" $address
    flag=`echo $?`
    if [ $flag -ne 0 ];then
        echo $f"-failed" >> failed.txt
    fi
done
