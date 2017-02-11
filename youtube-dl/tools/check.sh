#!/bin/bash

for f in `cat $1`;do
    echo -n $f
    line=`youtube-dl -F $f | grep "(best)"`
    echo "---"$line
done
