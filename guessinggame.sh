#!/usr/bin/env bash 

function count_files {
	files=$(ls -l | egrep "^-" | wc -l)
}

count_files

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

echo "You guessed right! There are $files files in this directory!"
