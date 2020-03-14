#!/bin/bash -x
echo "Enter the number"
read number
power=1
temp=1
while [[ $temp != $(($number+2)) && power -lt 256 ]]
do
	power=$(($power*2))
	echo $power
	((temp++))
done
	
