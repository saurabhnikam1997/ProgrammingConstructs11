#!/bin/bash -x

read -p "Enter Starting Number " start
read -p "Enter Ending Number " end
 #! 
for (( index=start; index<=end; index++ ))
do
    	count=0
    	for (( j=1; j<=$index; j++ ))
    	do
            	if [[ $(($index % $j)) -eq 0 ]]
            	then
                    	count=$(($count + 1 ))
            	fi
    	done
    	if [[ count -eq 2 ]]
    	then
            	echo $index
    	fi
done
