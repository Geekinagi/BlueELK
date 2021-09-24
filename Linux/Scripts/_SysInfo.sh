#!/bin/bash
today=$(date)
echo "Today's date is $today"
name=$(uname)
echo "This system is running on $name"
ip=$(hostname --ip-address)
echo "Your ip address is $ip"
name=$(hostname)
echo "Your hostname is $name"
dn=$(hostname -d)
echo "Your DNS is $dn"
cpu=$(ps aux --sort -%cpu| head -5)
echo "Your cpu is $cpu"
