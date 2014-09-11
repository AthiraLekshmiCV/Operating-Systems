#! /bin/sh

<<COMMENT
Given a file of numbers (one per line), write a script that will
find the lowest and highest number(use read, sort, head, tail)
COMMENT

file=$1
sort -g $file -o $file
echo -n "the lowest number is:"
head -1 $file
echo -n "the highest number is:"
tail -1 $file
