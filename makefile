readme.md: 
	touch readme.md
	echo "*JHU - UNIX Workbench - Course Project by Michael Couchman Created 2020-Feb*" >> readme.md
	echo "Compiled on..."
	date >> readme.md
	echo "With " >> readme.md
	wc -l guessinggame.sh >> readme.md
	echo " lines of code" >> readme.md
