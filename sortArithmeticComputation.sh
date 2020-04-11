#!/bin/bash -x
read -p "enter first number " a
read -p "enter second number " b
read -p "enter third number " c
x=$(($a+$b*$c))
y=$(($a*$b+$c))
z=$(($a/$b+$c))
