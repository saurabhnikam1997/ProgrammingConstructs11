#!/bin/bash  -x


read -p "Enter First Number" number

function checkPrime()
{
	count=0
	for (( i=2; i<=($1/2); i++ ))
	do
		if [[ $(($1%$i)) == 0 ]]
		then
			((count++))
		fi
	done
	if [[ $count -eq 0 ]]
	then
		echo $1 is Prime Number
	else
		echo $1 is Not Prime Number
		echo
	fi
}

function checkPalindrome()
{
	sum=0
	copynum=$1

   while [[ $copynum -ne 0 ]]
   do
      rem=$(($copynum %10))
		sum=$(($sum*10))
      sum=$(($sum+$rem))
      copynum=$(($copynum/10))
   done

	if [[ $sum -eq $1 ]]
   then
      echo "Given Number is Palindrome"
   else
      echo "Given Number is Not Palindrome"
   fi
	echo Reverse of Given Number is $sum

	checkPrime $sum
}

checkPrime $number
checkPalindrome $number
