# !/bin/sh

<<COMMENT
Script that prints the prime numbers from 3 to 300
COMMENT

start=3
stop=300

echo "2"

while [ $start -ne $stop ]
do
	temp=`expr $start / 2 `  
	flag=0			
	t=$((start + 0))    
	i=2  
	while [ $i -le $temp ]   
	do
		check=`expr $t % $i`
		if [ $check -eq 0 -a $flag -eq 0 ]		
		then

			flag=1
		fi		
		i=$((i + 1))
	done 
	if [ $flag -eq 0 ]
	then
		echo "$start"
	fi
	start=`expr $start + 1 `
done

