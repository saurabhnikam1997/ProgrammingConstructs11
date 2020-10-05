#!/bin/bash -x

HeadCount=0
TailCount=0

while [[ $HeadCount -ne 11 && $TailCount -ne 11 ]]
do
	CoinOutput=$((RANDOM%2))
	if [[ CoinOutput -eq 1 ]]
	then
		((HeadCount++))
	else
		((TailCount++))
	fi

	if [[ $HeadCount -eq 11 ]]
	then
		echo "HeadCount is 11, Head Won"

	elif [[ $TailCount -eq 11 ]]
	then
		echo "TailCount is 11, Tail Won"

		exit
	fi
done
