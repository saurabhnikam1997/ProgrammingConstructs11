#! /bin/bash -x
echo "Random Birth Month"
declare -A month
 
month=(["Jan"]=0 ["Feb"]=0 ["Mar"]=0 ["Apr"]=0 ["May"]=0 ["Jun"]=0 ["Jul"]=0 ["Aug"]=0 ["Sep"]=0 ["Oct"]=0 ["Nov"]=0 ["Dec"]=0 )
function random()
{
    	for (( i=1; i<=50; i++ ))
    	do
            	m=$((RANDOM % 12 + 1))
            	case $m in
            	"1")
                        month[Jan]=$((${month["Jan"]}+1))
                        ;;
            	"2")
                        month[Feb]=$((${month["Feb"]}+1))
                        ;;
            	"3")
                        month[Mar]=$((${month["Mar"]}+1))
                        ;;
            	"4")
                        month[Apr]=$((${month["Apr"]}+1))
                        ;;
            	"5")
                        month[May]=$((${month["May"]}+1))
                        ;;
            	"6")
                        month[Jun]=$((${month["Jun"]}+1))
                         ;;
            	"7")
                        month[Jul]=$((${month["Jul"]}+1))
                        ;;
            	"8")
                        month[Aug]=$((${month["Aug"]}+1))
                        ;;
            	"9")
                        month[Sep]=$((${month["Sep"]}+1))
                        ;;
            	"10")
                        month[Oct]=$((${month["Oct"]}+1))
                        ;;
            	"11")
                        month[Nov]=$((${month["Nov"]}+1))
                        ;;
            	*)
                        month[Dec]=$((${month["Dec"]}+1))
                        ;;
            	esac
    	done
echo ${month[@]}
echo ${!month[@]}
}
random
