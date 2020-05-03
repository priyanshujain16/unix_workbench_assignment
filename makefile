all: README.md

README.md:
	echo "# The Unix Workbench Assignment" > README.md
	echo "* This makefile was run at $(shell date)" >> README.md
	echo "* The guessinggame.sh contains $(shell wc -l < guessinggame.sh) lines" >> README.md

clean:
	rm README.md
