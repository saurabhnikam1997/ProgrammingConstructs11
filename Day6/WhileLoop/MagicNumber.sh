#!/bin/bash -x

Start=1
End=100

echo "Select Number Between 1 to 100"
temp=0
while [[ $temp -eq 0 ]]
do
	mid=$(($(( $Start + $End ))/2))

	echo "Press 1 if number ="$mid
	echo "Press 2 if number Greater than ="$mid
	echo "Press 3 if number less than ="$mid
	read input

	if [[ $input -eq 2 ]]
	then
		Start=$mid

	elif [[ $input -eq 3 ]]
	then
		End=$mid
	elif [[ $input -eq 1 ]]
	then
		echo Number Found

		break
	else
		echo Invalid Choice
	fi
done
