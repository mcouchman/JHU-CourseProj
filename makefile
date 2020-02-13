all: README.md
	
README.md:
	touch README.md
	echo "*JHU - UNIX Workbench - Course Project by Michael Couchman Created 2020-Feb*" >> readme.md
	echo "Compiled on..."
	date >> README.md
	echo "With " >> README.md
	wc -l guessinggame.sh >> README.md
	echo "lines of code" >> README.md

