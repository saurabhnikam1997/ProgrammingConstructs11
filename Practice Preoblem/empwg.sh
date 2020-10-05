#! /bin/bash -x

isParttime=1;
isFultime=2;
emprateperhr=20;
randomCheck=$((RANDOM%3));
if [ $isFultime -eq $randomCheck ];
then

	hrperday=8;
elif [ $isParttime -eq $randomCheck ];
then
	hrperday=4;
else
	salary=0;
fi

salary=$(( $emprateperhr * $hrperday ))
