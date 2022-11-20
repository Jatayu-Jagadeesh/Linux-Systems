6. WAP to find the smallest and largest of entered n numbers

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:14-09-2022
Description:find the smallest and largest of entered n number.
Sample i/p:
Sample o/p:
Doc

read n
read num
small=$num
large=$num
for i in `seq $((n-1))`
do
    read num
    if [ $num -lt $small ]
    then
	small=$num
    elif [ $num -gt $large ]
    then
	large=$num
	fi
    done
echo "small=$small"
echo "large=$large"

