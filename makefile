all: README.md
README.md:
	echo "<h1>JHU - UNIX Workbench - Guessing Game -Course Project by Michael Couchman</h1> " > README.md
	echo "Use commands: make all" >> README.md
	echo "** Filenames: 1. guessinggame.sh 2. makefile, 3. README.md **" >> README.md
	echo -n "*Compiled on* " >> README.md
	date >> README.md
	echo -n "The games contains $(shell wc -l < guessinggame.sh | cut -d " " -f1)" >> README.md
	echo " lines of code" >> README.md

