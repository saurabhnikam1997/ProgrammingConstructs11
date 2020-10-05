#!/bin/bash

function is_power_of_two() 
{
    declare -i n=$1

}

for (( n > 1 && n < 4 ))
do
	if is_power_of_two "$number"; 

	then
        printf "%d\n" "$number"
	fi
done
