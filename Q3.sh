#! /bin/bash
#set -x

echo -n Enter file Path :
read path 

ls $path 2>err 1>done
if [ $? -eq 0 ];
then 
echo  -n Enter Word to search about : 
read word
count=$(grep -c $word $path)
echo $count
elif [ $? -ne 0 ];
then 
echo -e Wrong Path "\n"failed to get file ! 
fi 