#!/bin/bash -x
read -p "enter first number " a
read -p "enter second number " b
read -p "enter third number " c
arithmetic[1]=$(($a+$b*$c))
arithmetic[2]=$(($a*$b+$c))
arithmetic[3]=$(($a/$b+$c))
arithmetic[4]=$(($a%$b+$c))
for (( i=1; i<=4; i++ ))
do
	for(( j=i+1; j<=4; j++ ))
	do
		if [ ${arithmetic[j]} -gt ${arithmetic[i]} ]
		then
			temp=${arithmetic[j]}
			arithmetic[j]=${arithmetic[i]}
			arithmetic[i]=$temp
		fi
	done
done
echo ${arithmetic[@]}

