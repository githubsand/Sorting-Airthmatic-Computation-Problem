#!/bin/bash -x
read a b c
e=$(($a/$b))
result=$(($c+$e))
echo $result
