#!/bin/bash

num=$(( (RANDOM % 10)+1))

function ask
{
	if ((guess==num))
		then
			echo "Congrats! It is $guess"
			sleep 2
			echo "Bye"
			sleep 1
			exit
		elif ((guess<num))
		then echo "Incorrect, too low"
		else echo "Incorrect, too high"
		fi
}
while read -p 'Guess Number from 1 to 10' guess
do
	ask
done