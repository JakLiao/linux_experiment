#!/bin/bash
function start(){
if [ $# -ne 3 ]
then
echo "please input three filenames:"
exit 0
fi
if [ ! -e $1 ]
then
echo "file1 do not exist!Please restart."
exit 0
fi
if [ -e $3 -a -e $2 ]
then
cat $1 $2 > $3
cat $3
elif [ ! -e $2 ]
then
echo  "file2 and file3 do not exist!"
cat $1
else 
echo "file3 do not exist!"
touch mydoc.txt
cat $1 $2 > mydoc.txt
cat mydoc.txt
fi
} 
start $@
