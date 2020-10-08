#! /bin/bash -x
num=3
harmonicaddition=0
 
for (( i=1; i<=num; i++ ))
do
    	addition=$((1/$i))
    	harmonicaddition=$(($harmonicaddition + $addition))
done
echo $harmonicaddition
