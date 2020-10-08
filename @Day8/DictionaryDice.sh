#! /bin/bash -x

declare -A Diceoutput
declare -A Occurances
i=1

function Result()
{
while [[ ${Occurances["$dice"]} -ne 10 ]]
do
    	dice=$(((RANDOM % 6)+1))
    	case $dice in
    	1)
                Diceoutput["$i"]=$dice
                Occurances["$dice"]=$((${Occurances["$dice"]}+1 ))
            	((i++))
            	;;
    	2)
                 Diceoutput["$i"]=$dice
                 Occurances["$dice"]=$((${Occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	3)
                 Diceoutput["$i"]=$dice
                 Occurances["$dice"]=$((${Occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	4)
                 Diceoutput["$i"]=$dice
                 Occurances["$dice"]=$((${Occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	5)
    	         Diceoutput["$i"]=$dice
                 Occurances["$dice"]=$((${Occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	*)
                 Diceoutput["$i"]=$dice
                 Occurances["$dice"]=$((${Occurances["$dice"]} + 1 ))
             	((i++))
            	;;
esac
done
echo ${Diceoutput[@]}
echo ${Occurances[@]}
 
}
 
function MaxOccurances()
{
max=${Occurances[1]}
for (( i=1; i<=6; i++ ))
do
    	if [[ ${Occurances[$i]} -gt $max ]]
    	then
            	max=${Occurances[$i]}
            	k=$i
    	fi
done
echo "Maximun Occurances are $max of Dice Output $k "
}
 
function MinOccurances()
{
min=${Occurances[1]}
for (( i=1; i<=6; i++ ))
do
    	if [[ ${Occurances[$i]} -le $min ]]
    	then
            	min=${Occurances[$i]}
            	j=$i
    	fi
done
echo "Minimun Occurances are $min of Dice Output $j"
}
 
Result
MaxOccurances
MinOccurances
