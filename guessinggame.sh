#!/bin/bash
# File: guessinggame.sh

function numfiles {
	echo `ls -l | grep "^-" - | wc -l`
}

nfiles=`numfiles`

#echo "Current directory: $PWD has $nfiles files."

while [[ $number -ne $nfiles ]]; do
	echo -n "How many files are in the current directory? "
	read number
	if [[ $number -lt $nfiles ]]; then
		echo "Your guess is too low."
	elif [[ $number -gt $nfiles ]]; then
		echo "Your number is too high."
	else
		echo "You have the right number. Congrats!"
		exit
	fi
done


