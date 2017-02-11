#!/bin/bash
# to get the address of each video from a playlist
# the varible is the web page

if [ $# -eq 0 ];then
    echo "Usage: `basename $0` need only one arg --> is the web page from youtube"
    exit 1
fi

FILE=$1
TITLE=`grep "title" $FILE  | head -n 1 | cut -c 10-`
ADDRESS=`cat $FILE | grep "href" | grep "watch" | cut -d\" -f6 | grep "watch" | cut -d"&" -f1`
LIST_NAME=${FILE}-list
echo $TITLE > $LIST_NAME
for f in $ADDRESS;do
    echo "http://www.youtube.com"$f >> $LIST_NAME
done
