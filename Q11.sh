#! /bin/bash

declare -a array=(
    [0]=5
    [1]=1
    [2]=3
)
i=0
sum=0
while [ $i -lt 3 ];
do
sum=$((sum+array[$i]))
((i++))
done
echo $sum 