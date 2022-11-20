9. WAP to check whether a number is palindrome or not.


#!/bin/bash

<<Doc
Name:Jagadeesh
Date:
Description:
Sample i/p:
Sample o/p:
Doc

echo "Enter number"
read num

for i in $num
do
   a=`expr $num % 10`
   b=`expr $a \* 10`
   c=`expr $b + 2`
   d=`expr $c \* 10`
   e=`expr $d + 1`
done

if [ $e = $num ]
then
    echo " number is palindrone "
else
    echo " number is not palindrone "
fi

