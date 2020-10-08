#! /bin/bash -x

declare -a array

array=(1 5 3 7 -6 -7 2 6 -8)
echo ${array[@]}
function FindElement()
{
 
echo Array Elements whose addition is Zero are..
for (( i=0; i<(${#array[@]}-2); i++))
do
    	for (( j=1; j<(${#array[@]}-1); j++))
    	do
            	for (( k=2; k<(${#array[@]}); k++))
            	do
                    	if [[ $(((${array[i]}+${array[j]}+${array[k]}))) -eq 0 ]]
                    	then
                            	echo ${array[i]} ${array[j]} ${array[k]}"number is zero"
                    	fi
            	done
    	done
done
}
FindElement
