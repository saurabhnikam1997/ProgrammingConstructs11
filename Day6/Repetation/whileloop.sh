#! /bin/bash

count=1
while [ $count -lt 11 ]
do 

	echo $count
	#((count++))
	count=$((count+4))
done
