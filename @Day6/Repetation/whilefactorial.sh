#! /bin/bash  -x

no=5
v=$no
a=1
temp=1
while [ $a -lt $no ]
do
	temp=`expr $temp \* $no`
	no=`expr $no - 1`
done
echo "Factorial of $v is $temp"
