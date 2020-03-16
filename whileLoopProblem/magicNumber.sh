#!/bin/bash -x
echo "Welcome And Guess the Magic Number:"
lower=1
upper=100
magicNumber=$((RANDOM%100+1))
number=-1
while (($lower<=$upper && $number!=$magicNumber ))
do
	echo "Guess a number between $lower to $upper"
	read number

	if(($number==$magicNumber))
	then
		echo "Congratulations You Found the Magic Number!!!!"
	elif(($number<$magicNumber))
	then
		lower=$number
	else
		upper=$number
	fi
done
