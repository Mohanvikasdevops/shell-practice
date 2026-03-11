#!/bin/bash

NUMBER=$1

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal

if [ $NUMBER -gt 20 ]; then
    echo "Given number: $NUMBER is greater than 25"
elif
    echo "Given number: $NUMBER is equal to 25"
else
    echo "Given number: $NUMBER is less than 25"
fi 
