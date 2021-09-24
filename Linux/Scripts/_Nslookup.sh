#!/bin/bash
echo 'Nslookup -type=A'
echo '****************************************'
nslookup -type=A $1
echo '****************************************'

echo 'Nslookup -type=NS'
echo '****************************************'
nslookup -type=NS $1
echo '****************************************'

echo 'Nslookup -type=MX'
echo '****************************************'
nslookup -type=MX $1
echo '****************************************'

echo 'Nslookup -type=txt'
echo '****************************************'
nslookup -type=txt $1
echo '****************************************'
