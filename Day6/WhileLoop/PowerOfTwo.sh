#!/bin/bash -x

number=$1
index=1

while [[ $index -le $number && $power -lt 256 ]]

do
	power=$(( `expr "2^$index" | bc -l` ))
	echo $power
	((index++))
done
