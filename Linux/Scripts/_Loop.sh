#!/bin/bash

cities=('Portland' 'Chicago' 'San Francisco' 'Boston')

echo ${cities[1]}

exit

for city in ${cities[@]}; do
	echo $city
	if [ "$city" = "Portland" ]; then
		echo "I live here!"
	fi
done
