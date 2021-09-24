#!/bin/bash

if [ $USER != 'sysadmin' ]; then
	echo 'Who are you?'
else 
	echo 'You are sysadmin'
fi

	if [ $UID != '1000' ]; then
		echo 'Who are you?'
	else
		echo 'You are 1000 uid'
	fi
		if [ $(whoami) != 'sysadmin' ]; then
			echo 'Who are you?'
		else	
			echo "You are sysadmin"
		fi
			me=$(whoami)
			echo $me
			if [ $me != 'sysadmin' ]; then
				echo 'Who are you?'
			else
				echo 'Nice you are you!'
			fi

