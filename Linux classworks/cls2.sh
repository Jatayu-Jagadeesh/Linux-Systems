2. WAP to check whether the entered number is multiple of 5.

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:14-09-2022
Description:check whether the entered number multiple of 5
Sample i/p:Any number
Sample o/p:is entered number Multiple by 5 / not
Doc

echo "Enter number"
read num1

if [ $((num1 % 5)) -eq 0 ]
then
    	echo "Number is multiple of 5"
else
	echo "Number is not multiple of 5"
fi

