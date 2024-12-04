#/bin/bash

echo -n Enter n :
read n 
i=1
sum=0
while [ $i -lt  $n   -o  $i -eq $n ];
do 
((sum=sum+i))
((i++))
done
echo "summation of nums = $sum"
