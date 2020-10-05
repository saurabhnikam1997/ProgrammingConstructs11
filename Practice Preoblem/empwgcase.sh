#!/bin/bash  -x

isParttime=1;
isFultime=2;
empRateperhr=20;
empCheck=$((RANDOM%3));

case empCheck in
	$isFultime=1)
		emphr=8
		;;
	$isParttime=2)
		emphr=4
		;;
	*)
	emphr=0;;
esac
salary=$(( $emphr*$empRateperhr ));

