#!/bin/bash
echo 'Before'
if [ $1 -gt $2 ]; then
	echo "$1 is greater than $2"
elif [ $1 -lt $2 ]; then
	echo "$1 is less than $2"
else
	echo "$1 is equal to $2"
fi
echo 'After'

#FOO=sometextentry
#echo -e "$FOO \n"  #\n adds a new line 
#echo -e "\n\t$FOO \n\n" #\t is a tab
