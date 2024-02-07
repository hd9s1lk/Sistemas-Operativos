#!/bin/sh

i=0

if [ $1 -eq 0 ]
then i=$((i+1))
else i=$i
fi

echo $i
