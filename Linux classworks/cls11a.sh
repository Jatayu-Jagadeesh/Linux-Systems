11. WAP to print the pattern as follows if input is 5:

#!/bin/bash

<<Doc
Name:Jagadeesh
Date:
Description:
Sample i/p:
Sample o/p:
Doc

echo " Enter the number "
read n
for i in `seq $n`
do
    for j in `seq $((${n} - ${i}))`
    do
	echo -n " "
    done
    for k in `seq $-i`
    do
	echo -n "*"
    done
    echo
done    
