10. WAP to check whether a given number is prime or not.

#!/bin/bash
<<Doc
Name:Jagadeesh
Date:
Description:
Sample i/p:
Sample o/p:
Doc

echo " Enter the Number "
read n
count=0
while [ $i -le `expr $number / 2` ]
do
    if [ `expr $number % $i` -eq 0 ]
    then
	count=1
    fi
    i=$((i+1))
done
if [ $count -eq 1 ]
then
    echo "$number is not a prime number"
else
    echo "$number is a prime number"
fi
