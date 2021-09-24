#!/bin/bash
#if the string (syntax dependent) $x is equal to $y, run echo command.
if [ $x = $y ]; then
	echo "X is equal to Y!"
else [ $x != $y ]; then
	echo "X is not equal to Y!"
fi
#Make sure to use the "" as it will make sure spaces and the like are included
