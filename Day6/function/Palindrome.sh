#!/bin/bash -x


read -p "Enter First Number" number1
read -p "Enter Second Number" number2
sum=0

function checkPalindrome()
{
   while [[ number1 -ne 0 ]]
   do
      rem=$(($number1 %10))
		sum=$(($sum*10))
      sum=$(($sum+$rem))
      number1=$(($number1/10))
   done

   if [[ $sum -eq $number2 ]]
   then
      echo "Given Numbers Are Palindrome"
   else
      echo "Given Number are Not Palindrome"
   fi
}

checkPalindrome
