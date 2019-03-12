all: README.md
README.md: guessinggame.sh
	echo "## Project name: workbench-assignment" > README.md
	echo "Make was run:" >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
