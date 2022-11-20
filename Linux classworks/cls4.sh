4. WAP to check whether given year is leap year or not.

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:14-09-2022
Description:check whether given number is leap year or not.
Sample i/p:
Sample o/p:
Doc

read year
if [ $((year % 100)) -eq 0 ]
then
    if [ $((year % 400)) -eq 0 ]
    then
	echo Leap year
    else
	echo not a leap year
    fi
elif [$((year % 4)) -eq 0]
then
	echo Leap year
else
    	echo Not a leap year
fi    
