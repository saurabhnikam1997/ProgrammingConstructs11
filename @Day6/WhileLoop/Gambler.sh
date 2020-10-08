#!/bin/bash -x

stakes=100
goal=200
betchecker=0
winchecker=0

while [[ $stakes -gt 0 && $stakes -lt $goal ]]
do
	((betchecker++))
	random=$((RANDOM % 2 ))
	if [[ $random -eq 0 ]]
	then
		((stakes++))
		((winchecker++))
	else
		((stakes--))
		break
	fi

done
echo Played $betchecker times
echo Won $winchecker times
echo Stakes = $stakes
