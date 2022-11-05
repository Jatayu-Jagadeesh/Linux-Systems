#!/bin/bash

<< doc
name: jagdeesh
date:
description:
sample input:
sample output:
doc
option=y
while [ $option = "y" ]
do
    	echo "		1. sign up
       	 	2. sign in
		3. exit"
	       read -p "enter the option:" op
       case $op in
	   1)
	       flag=0
	       while [ $flag = 0 ]
	       do
	       read -p "enter the username :" name
	       arrname=(`cat username.csv`)
	       for i in ${arrname[@]}
	       do
		   if [ $name = $i ]
		   then
		       flag=1
		   fi
	       done
	       if [ $flag = 0 ]
	       then
		       echo "$name" >> username.csv
		       echo "enter password";read -s password
		       echo "re enter the password";read -s repassword
		       if [ $password = $repassword ]
		       then
			   echo "$password" >> password.csv
			   echo "user id created sucssfully"
			   break
		   	else
			    echo "password is wrong"
		       fi
		   else
		       echo "username is already existed : please use another name"
		fi
		done
	       ;;
	  2)
		 flag=0
	         while [ $flag = 0 ]
	         do
	         read -p "enter the username :" name
	       arrname=(`cat username.csv`)
	       arrpass=(`cat password.csv`)
	       length=`cat username.csv | wc -l` 
	       for i in `seq 0 1 $(($length-1))`
	       do
		   if [ $name = ${arrname[$i]} ]
		   then
		       flag=1
		       index=$i
		   fi
	       done
	       if [ $flag = 1 ]
	       then
		       echo "enter password";read -s password
		       if [ $password = ${arrpass[$index]} ]
		       then
			   echo "sign in sucssfully"
			echo -e "	1.take the test\n	2. exit"
			read opt
			case $opt in
			    1)
	       			length=`cat questionbank.txt | wc -l` 
				for i in `seq 10 10 $(($length+10))`
				do
				    head -$i questionbank.txt | tail -10
				    for i in `seq 10 -1 1`
				    do
					echo -ne "\rselect the option : $i \c"
					read -t 1 option
					if [ -n "$option" ]
					then
					    break
					else
					    option="e"
					fi
				    done
					echo "$option" >> userans.txt
					echo " "
				done
				echo -e "\e[92:1m-----------result----------------\e[0m"
				count=0
	       			length=`cat questionbank.txt | wc -l` 
				for i in `seq 10 10 $(($length+10))`
				do
				    head -$i questionbank.txt | tail -10
				    anslength=`cat userans.txt | wc -l`
				    arrcorrans=(`cat corractans.txt`)
				    arruserans=(`cat userans.txt`)
				   j=$((($i/10)-1))
					echo "correct answer:${arrcorrans[$j]}"
					echo "user answer:${arruserans[$j]}"
					if [ ${arrcorrans[$j]} = ${arruserans[$j]} ]
					then
					    count=$(($count+1))
					fi
				done
				echo "		 RESULT  "
				echo "total marks=$count/10"
			#	echo $anslength $count
				sed -i d userans.txt
				;;
			    2)
				break
				;;
			esac
		   	else
			    echo "password not match"
		       fi
		   else
		       echo "username not in the list"
		       break
		fi
		done
	       ;;
	   3)
	       break
	       ;;
	   *)
	       echo "please enter the correct option"
	       ;;
       esac
       read -p "do you want to countinue y/n:" option
   done
