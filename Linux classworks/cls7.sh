7. WAP to print all the even numbers from 1 to 100.


#!/bin/bash

<<Doc
Name:Jagadeesh
Date:15-09-2022
Description:to print all the even numbers from 1 to 100
Sample i/p:
Sample o/p:
Doc

read -p "Enter the number1: " M
read -p "Enter the number2: " N
#M=$((M+1))
#N=$((N-1))
while [ $M -le $N ]
do
    if [ `expr $M % 2` -eq 0 ]
then
    echo "$M"
fi
M=`expr $M + 1`
done
