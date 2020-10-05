#!/bin/bash

function celciusToFarenheit()
{
	echo "Enter Temperature in Degree Celcius"
   read celcius
	if [[ $celcius -ge 0 && $celcius -le 100 ]]
	then
   	farenheit=`expr "scale=4;(($celcius*9/5))+32"| bc -l`
   	echo "$celcius °C = $farenheit °F"
	else
		echo "You might Enter Temperature In Invalid Range"
	fi
}

function farenheitToCelcius()
{
	echo "Enter Temperature in Degree Farenheit"
	read farenheit
	if [[ $farenheit -ge 32 && $farenheit -le 212 ]]
	then
		celcius=`expr "scale=4;$(($farenheit-32))*5/9" | bc -l`
		echo "$farenheit °F = $celcius °C "
	else
		echo "You might Enter Temperature In Invalid Range"
	fi
}
function choice()
{
echo "1. Convert Celcius To Farenheit"
echo "2. Convert Farenheit To Celcius "
read -p "Enter your choice " choice

case $choice in
  1)
 	celciusToFarenheit
  ;;
  2)
    farenheitToCelcius
  ;;
  *)
  echo "Invalid Choice"
  ;;
esac
}
choice
