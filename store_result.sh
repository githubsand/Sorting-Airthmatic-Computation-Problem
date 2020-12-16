#!/bin/bash -x
declare -A store
read a b c
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))
store[1]=$result1
store[2]=$result2
store[3]=$result3
store[4]=$result4
echo "all use case result are " ${store[@]}
