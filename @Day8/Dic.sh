#! /bin/bash -x
declare -A diceoutput
declare -A occurances
i=1

function result()
{
while [[ ${occurances["$dice"]} -ne 10 ]]
do
    	dice=$(((RANDOM % 6)+1))
    	case $dice in
    	1)
                diceoutput["$i"]=$dice
                occurances["$dice"]=$((${occurances["$dice"]}+1 ))
            	((i++))
            	;;
    	2)
                 diceoutput["$i"]=$dice
                 occurances["$dice"]=$((${occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	3)
                 diceoutput["$i"]=$dice
                 occurances["$dice"]=$((${occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	4)
                 diceoutput["$i"]=$dice
                 occurances["$dice"]=$((${occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	5)
    	         diceoutput["$i"]=$dice
                 occurances["$dice"]=$((${occurances["$dice"]} + 1 ))
             	((i++))
            	;;
    	*)
                 diceoutput["$i"]=$dice
                 occurances["$dice"]=$((${occurances["$dice"]} + 1 ))
             	((i++))
            	;;
esac
done
echo ${diceoutput[@]}
echo ${occurances[@]}
 
}
 
function maxoccurances()
{
max=${occurances[1]}
for (( i=1; i<=6; i++ ))
do
    	if [[ ${occurances[$i]} -gt $max ]]
    	then
            	max=${occurances[$i]}
            	k=$i
    	fi
done
echo "Maximun Occurances are $max of Dice Output $k "
}
 
function minoccurances()
{
min=${occurances[1]}
for (( i=1; i<=6; i++ ))
do
    	if [[ ${occurances[$i]} -le $min ]]
    	then
            	min=${occurances[$i]}
            	j=$i
    	fi
done
echo "Minimun Occurances are $min of Dice Output $j"
}
 
result
maxoccurances
minoccurances
