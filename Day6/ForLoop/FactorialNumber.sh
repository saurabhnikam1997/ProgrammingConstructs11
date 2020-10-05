#! /bin/bash -x

read -p "Enter Number To Find its Factorial " num

answer=1

for (( index=$num; index>=1; index-- ))

do
    	answer=$(($answer * $index ))
done

echo Facorial of $num is $answer
