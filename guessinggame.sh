#!/usr/bin/env bash 

files=$(ls -l | egrep "^-" | wc -l)

read -p "How many files are there in the current directory? : " guess

while [ $guess -ne $files ]
do
	if [ $guess -gt $files ]
	then
		read -p "Your guess was too high, try again: " guess
	else
		read -p "Your guess was too low, try again: " guess
	fi

done

echo "You guessed right, there is $files in this directory!"
