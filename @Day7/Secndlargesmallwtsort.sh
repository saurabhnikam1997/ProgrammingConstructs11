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
	echo Generate Array.. ${array[@]}
	echo
}

function SecondLargest()
{
	largest=$1
	SecondLargest=$1
	for m in $*
	do
		if [[ $m -gt $largest ]]
		then
			SecondLargest=$largest
			largest=$m
		elif [[ $m -gt SecondLargest ]]
		then
			SecondLarest=$m
		fi
	done
	echo Largest Element Of Array Is.. $largest
	echo Sdcond Largest Element Of Array Is.. $SecondLargest
	echo
}

	function SecondSmallest
{
	smallest=$1
	SecondSmallest=$1
	for m in $*
	do
		if [[ $m -lt $smallest ]]
		then
			SecondSmallest=$smallest
			smallest=$m
		elif [[ $m -lt SecondSmallestm ]]
		then
			SecondSmallest=$m
		fi
	done
	echo Samllest Element Of Array Is.. $smallest
	echo Second Smallest Element of Array Is.. $SecondSmallest
	echo

}

numberGenerate
SecondLargest ${array[@]}
SecondSmallest ${array[@]}
























