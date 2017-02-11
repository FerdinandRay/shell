#!/bin/bash
# get youtube playlist page

COUNT=1
FNAME="page"$COUNT
for f in `cat $1 | grep http`;do
    curl -x 127.0.0.1:8787 -o $FNAME $f
    echo $f
    COUNT=`expr $COUNT + 1`
    FNAME="page"$COUNT
done
