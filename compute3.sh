#!/bin/bash -x
read a b c
e=$((a%b))
result=$(($e+$c))
echo $reslut
