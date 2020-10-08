#!/bin/bash -x

function CelciusToFarenheit()
{
	echo "Enter Temperature in Degree Celcius"
	read Celcius
	if [[ $Celcius -ge 0 && $Celcius -le 100 ]]
	then
		Farenheit=`expr "scale=4;(($Celcius*9/5))+32"| bc -l`
		echo "$Celcius °C = $Farenheit °F"
	else
		echo "Invlid Range Of Temperature"
	fi
}

function FarenheitToCelcius()
{
	echo "Enter Temperature in Degree Farenheit"
	read Farenheit
	if [[ $Farenheit -ge 32 && $Farenheit -le 212 ]]
	then
		Celcius=`expr "scale=4;$(($Farenheit -32))*5/9" | bc -l`
		echo " $Farenheit °F = $Celcius °C "
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

