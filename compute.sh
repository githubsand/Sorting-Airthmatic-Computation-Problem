#!/bin/bash -x
echo "Take three input from user"
read a b c
result=$(($a+$b*$c))
echo $result
