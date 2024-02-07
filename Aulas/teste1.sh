#!/bin/sh

num=1
for n in $*
do
 echo $n \($num\)
 num=$(($num + 1))
done
