#! /bin/bash -x
number=$1
output=1

if [[ $number < 1 && $number > 4 ]]
then
	echo "out off range"
else

	while [[ $count -ne 4 ]]
	do
		echo "Table of 2^n upto $number is"
		output=$(( $output*2 ))
		echo $output
		count=$((count+1))
	done
fi
