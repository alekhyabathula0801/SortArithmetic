#!/bin/bash -x
read -p "enter first number " a
read -p "enter second number " b
read -p "enter third number " c
#declare -A arithmetic
arithmetic[1]=$(($a+$b*$c))
arithmetic[2]=$(($a*$b+$c))
arithmetic[3]=$(($a/$b+$c))
arithmetic[4]=$(($a%$b+$c))
