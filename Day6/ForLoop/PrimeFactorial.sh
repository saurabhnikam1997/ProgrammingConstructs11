#! /bin/bash -x
 
read -p "Enter Number To Find Factors " number
 
for (( index=1; index<=$number; index++ ))
do
for (( i=2; i<=$number; i++ ))
do
    	if [[ $(($number%$index)) -eq 0 ]]
    	then
                    	count=0
                    	for (( j=1; j<=$index; j++ ))
                    	do
                            	if [[ $(( $index% $j )) -eq 0 ]]
                            	then
                                        count=$(($count+1))
                            	fi
                    	done
                        if [[ $count -eq 2 ]]
                    	then
                            	echo $index
                    	fi
    	fi
    	for (( j=$i;($number%$j)==0; j=$i))
    	do
            	if [[ $(( $number%$j )) -eq 0 ]]
            	then
                    	echo $i
            	fi
    	number=$(($number/$j))
    	done
done
done
