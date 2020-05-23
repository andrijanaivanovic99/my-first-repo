draft_README.md:
	touch README.md
	echo "# GUESSING GAME" > README.md
	echo "" >> README.md
	date >> README.md 
	echo "" >> README.md
	(wc -l guessinggame.sh | egrep -o "[0-9]+") >> README.md

