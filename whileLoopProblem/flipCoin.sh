#!/bin/bash -x 
##VARIABLE
tail=0
head=0
while [[ $tail -lt 11 && $head -lt 11 ]]
do
	#GENERATE RANDOM VALUE
	randomCheck=$(( RANDOM%2 ))
	if(( $randomCheck == 1))
	then
		echo "Heads"
		((head++))
		echo "$head"
	else
		echo "Tails"
		((tail++))
		echo "$tail"
	fi
done
if(($head==11))
then
	echo "Heads Wins"
else
	echo "Tails wins"
fi
