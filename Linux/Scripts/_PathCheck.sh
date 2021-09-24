#!/bin/bash
PATH="$PATH:/home/sysadmin/SCRIPTS"
# to append the home path to the path
# to make it persistent you need to add it to 

#if [ ! -d $HOME/research ]
#then
#mkdir $HOME/research
#fi

$path='~/research'

if [ ! -d $path ]; then
#if [ -d '~/research']; then
	echo 'This path exists'
else 
	mkdir '~/research'
fi
