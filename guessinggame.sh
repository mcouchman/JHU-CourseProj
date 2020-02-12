#!/usr/bin/env bash
# Filename - guessinggame.sh 
# JHU - UNIX Workbench course assignment by Michael Couchman 2020-02-10 in Ontario, Canada
# PART 1 Combine ls -l & grep -c to count the number of files in pwd and store in variable called linecount (Function 1) 
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
			echo "Congrats"
		fi
		# IF guess is too high, then
		if [[ $linecount -lt $guess ]]
		then
			echo "Too high!"
		fi
		# If guess is too low
		if [[ $linecount -gt $guess ]]
		then
			echo "Too low!"
		fi
	done
	echo "Congrats"
	exit
}
one
