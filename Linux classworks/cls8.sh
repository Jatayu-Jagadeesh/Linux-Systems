8. WAP to print the ‘n’ Fibonacci terms.

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:
Description:
Sample i/p:
Sample o/p:
Doc

echo "Enter the number"
read n
num1=0
num2=1
count=2
echo " numbers upto $n terns "
echo "$num1"
echo "$num2"
while [ $count -lt $n ]
do
    count=`expr $count + 1`
    a=`expr $num1 + $num2`
    echo "$a"
    num1=$num2
    num2=$a
done

