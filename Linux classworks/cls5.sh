5. WAP that reads in 2 integers and determines and prints if the first is a multiple of the second.

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:14-09-2022
Description:if the first is multiple of the second
Sample i/p:
Sample o/p:
Doc

echo "Enter the First integer numbers"
read num1
echo "Enter the Second integer numbers"
read num2

if [ $(($num1 % $num2)) -eq 0 ]
then
echo " First number is Multiple of Second Number "
else
echo " First number is not Multiple of Second Number "
fi
    	
