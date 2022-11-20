3. WAP, given three sides of a triangle, to check whether the triangle is perfect right triangle.

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:14-09-2022
Description:given 3 sides of triangle,to check the triangle is perfect                 right triangle?
Sample i/p:Triangle a b c values
Sample o/p:Triangle is right angle \ not
Doc

echo "Enter values of Triangle sides a b c"
read small1
read small2
read large

if [ $((( $small1 ** 2) + ( $small2 ** 2))) -eq $(( $large ** 2)) ]
then
    echo " Triangle is right angled "
else
    echo " Triangle is not right angled"
fi
