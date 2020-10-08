#! /bin/bash -x
declare -a array
function numberGenerate()
{
    	for (( i=0; i<10; i++ ))
    	do
            	number=$(((RANDOM %900)+100))
            	array[i]=$number
    	done
    	echo
    	echo Generated Array.. ${array[@]}
    	echo
}
function sortArray()
{
    	for ((i=0; i<=9; i++ ))
    	do
            	for (( j=i+1; j<=9; j++))
            	do
                    	if [[ ${array[$i]} -gt ${array[$j]} ]]
                    	then
                            	temp=${array[i]}
                            	array[i]=${array[j]}
                            	array[j]=$temp
                    	fi
            	done
    	done
    	#echo Second Largest is..${array[1]}
    	echo Second Smallest is..${array[1]}
	echo Second Largest is..${array[8]}
}
numberGenerate
sortArray ${array[@]}
