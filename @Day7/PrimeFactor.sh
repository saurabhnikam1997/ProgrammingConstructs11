#! /bin/bash -x

declare -a array

count=0
read -p "Enter Number To Find Factors " number

function checkPrimeFactors()
{
	for (( i=1; i<=$number; i++ ))
	do
 		if [[ $(($number%$i)) -eq 0 ]]
		then
   		count=0
   		for (( j=1; j<=$i; j++ ))
   		do
      			if [[ $(( $i% $j )) -eq 0 ]]
      			then
         			count=$(($count+1))
      			fi
   		done
   			if [[ $count -eq 2 ]]
   			then
      				array[c++]=$i
   			fi
		fi
	done
}
checkPrimeFactors
echo ${array[@]}
