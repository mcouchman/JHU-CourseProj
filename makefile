README.md:
	echo "<h1>JHU - UNIX Workbench - Guessing Game -Course Project by Michael Couchman</h1> " >> README.md
	echo "Use commands: make all to compile README.md" >> README.md
	echo "*Compiled on* " >> README.md
	date >> README.md
	echo -n "The games contains $(shell cat guessinggame.sh | wc -l)" >> README.md
	echo " lines of code" >> README.md

