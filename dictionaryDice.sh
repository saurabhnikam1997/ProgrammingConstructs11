#!/bin/bash -x

declare -A face_value
read -p "Enter how many times you want to roll a die :" rollDieTimes
isRoll=0;
FACE_ONE=0;
FACE_TOW=1;
FACE_THREE=3;
FACE_FOUR=4;
FACE_FIVE=5;
FACE_SIX=6;

while [[ isRoll  -lt rollDieTimes ]]
do 
	roll=$(( RANDOM%6 +1 ))
	case $roll in
		$FACE_ONE)
			face="One"
			;;
		$FACE_TWO)
			face="Two"
			;;
		$FACE_THREE)
			face="Three"
			;;
		$FACE_FOUR)
			face="Four"
			;;
		$FACE_FIVE)
			face="Five"
			;;
		$FACE_SIX)
			face="Six"
			;;
                *)
		        face="Unpredictable situation happen"
			;;
	esac
	face_value[$face]=$roll
	isRoll=$(( isRoll + 1))
done

echo "${face_value[@]}"

