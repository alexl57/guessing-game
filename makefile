all: README.md
README.md : guessinggame.sh
	echo "The guessing game" > README.md
	echo "Created on: `date`" >> README.md
	echo "guessinggame.sh has `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines." >> README.md

