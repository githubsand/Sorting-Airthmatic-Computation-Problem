#!/bin/bash -x
declare -A store
read a b c
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))
store[0]=$result1
store[1]=$result2
store[2]=$result3
store[3]=$result4
i=0
while [ $i -lt ${#store[@]} ]
do
    arr[$i]=${store[$i]}
    let i++
done
for ((k=0;k<4;k++ ))
do
  for (( j=0;j<3;j++ ))
  do
    if [ ${arr[$j]} -gt ${arr[$(($j+1))]} ]
    then
        temp=${arr[j]};
        arr[$j]=${arr[$(($j+1))]};
        arr[$((j+1))]=$temp;
    fi
  done
done
echo " array are sorted in Ascending order" ${arr[@]}
