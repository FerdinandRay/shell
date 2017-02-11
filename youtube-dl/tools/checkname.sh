#!/bin/bash

for f in `cat $1`;do
    echo -n $f
    line=`youtube-dl -e $f`
    echo "---"$line
done
