#!/bin/bash


if [[ $# -ne 2 ]];then
    echo "Please enter exactly two arguents"
    exit 1
fi

lenght_1=${#1}
lenght_2=${#2}

if [[ $lenght_1 -gt lenght_2 ]];then
  echo -n "From $1 and $2,the lenght of $1 is greater. \n"
elif [[ $lenght_1 -eq $lenght_2 ]];then
  echo -n "The lenght of $1 and $2 is equal. \n"
else
  echo -n "From $1 and $2,the lenght of $2 is greater. \n"
fi

exit 0