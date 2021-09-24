#!/bin/bash
#if [ 5 -gt 4 ] && [ 4 -gt 3 ]; then 
#	echo "This is true"
if [ 5 -gt 4 ]; then
	if [ 4 -gt 3 ]; then
		echo "This is true"
		fi
else
	echo "This is false"
fi

