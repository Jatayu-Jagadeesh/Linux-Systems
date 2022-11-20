/*IF*/
1. WAP to check whether the product of two given numbers is odd or even.

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:
Description:
Sample i/p:
Sample o/p:
Doc

echo "ENTER TWO NUMBERS"
read num1 num2
prod=`expr $num1 \* $num2`
echo "$prod"

if [ $(($prod % 2)) -eq 0 ]
then
	echo "product is even"
else
	echo "product is odd"
fi	
