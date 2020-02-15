#!/usr/bin/env bash
# Filename - guessinggame.sh 
# JHU - UNIX Workbench course assignment by Michael Couchman 2020-02-10 in Ontario, Canada
function one {
	cd .
	linecount=$(ls -l | grep -c "^")
	while [[ $linecount -ne $guess ]]
	do
		echo "Please enter a guess as to how many files are in this directory: "
		read guess
		# PART 2 (Function II) If correct, then
		if [[ $linecount -eq $guess ]]
		then
			echo "Congratulations! That was correct :)"
		fi
		# IF guess is too high, then
		if [[ $linecount -lt $guess ]]
		then
			echo "That was too high! Try again."
		fi
		# If guess is too low
		if [[ $linecount -gt $guess ]]
		then
			echo "That was too low! Try again."
		fi
	done
	exit
}
one
