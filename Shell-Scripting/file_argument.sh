#!/bin/sh

<< COMMENT1
Write a shell script which will receive any number of filename as arguments.
The shell script should check whether every argument supplied is a file or directory. 
If it is a directory it should be appropriately reported.
If it is a filename then name of the file as well as the number of lines present in it 
should be reported.
COMMENT1

echo "There are $# arguments "
echo "The arguments are $* "
for i in $*
	do
	if [ -f $i ]
        then
		 echo -n " $i is a file .The number of lines in it: " 
		 wc -l $i | cut -d ' ' -f1
	
	fi	
	
	if [ -d $i ]
	then
		echo " $i is a directory "
	fi
done
