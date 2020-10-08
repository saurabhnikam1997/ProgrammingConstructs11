#! /bin/bash -x

function GetNumbers()
{
    	count=0
    	for (( i=0; i<100; i++ ))
    	do
            	CheckRepeated $i
    	done
}
 
function CheckRepeated()
{
    	reverse=0
    	number=$1
    	while [[ $number -ne 0 ]]
    	do
            	reminder=$(($number%10 ))
            	reverse=$(($reverse*10+$reminder))
            	number=$(($number/10))
    	done
    	if [[ $reverse -eq $1 && ${#reverse} -eq 2 ]]
    	then
            	array[c++]=$reverse
 
    	fi
}
GetNumbers
echo "Repeated element in array is :: "${array[@]}
