SHELL := /bin/bash

README.md: guessinggame.sh
	echo "Guess the number of files in your directory<br />" > README.md
	echo "makefile was run at: $(shell date +'%c')<br />" >> README.md
	echo "The number of lines in the script: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md
	
clean: 
	rm README.md