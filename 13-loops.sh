#!/bin/bash

#echo 1
#echo 2
#echo 3

for i in {1...100}
do
    echo $i 
done


count=1

while [ $count -le 6 ]
do
    echo "Count is $count"
    sleep 1
    # Increment the counter 
    ((count++))
done