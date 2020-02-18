#!/usr/bin/env bash
# Filename - guessinggame.sh 
# JHU - UNIX Workbench course assignment by Michael Couchman 2020-02-10 in Ontario, Canada
# Set PATH to run regardless of directory, create GG-Directory (overwrite), then Change to that directory
PATH=$PATH:$PWD; mkdir -p $HOME/GG_TEST/; cd $HOME/GG_TEST/
echo $PATH
function one {
	linecount=$(find . . -maxdepth 1 -mindepth 1 -type f | wc -l)-1
	while [[ $linecount -ne $guess ]]
	do
		echo "Please enter a guess as to how many files are in this directory: "
		read guess
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
	if [[ $linecount -eq $guess ]]
	then
		echo "Congratulations! That was correct :)"
	fi
	if ! [[ $linecount -ne $guess ]]
	then
		echo "Error. Exiting.. Please Run Again and Enter Integers Only."
		exit
	fi
	exit
}
one
