#!/bin/bash

COUNT=$1
FILE=$2
CONT=`cat $FILE`
for f in $CONT;do
    hd=`echo $f | cut -d"~" -f2`
    address=`echo $f | cut -d"~" -f1`
    #youtube-dl -f $hd -o "$COUNT-%(title)s.%(ext)s" $address
    youtube-dl -f $hd -o "%(title)s.%(ext)s" $address
    COUNT=`expr $COUNT + 1`
done
