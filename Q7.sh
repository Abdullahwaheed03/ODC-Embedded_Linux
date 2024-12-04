#! /bin/bash

echo -n  " Enter file path : "
read path 

uniq $path > uniq_data

echo -e "Uniq data is : \n"
cat uniq_data
