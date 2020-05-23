#!/usr/bin/env bash

clear
declare -i numFiles
numFiles=$(find . maxdept 1 -not -type d | wc --lines)

functions makeValidGuess {
	until read -p "Unesite koliko datoteka ima u trenutnom direktorijumu: " guess;
	[[ "$guess" =~ ^[0-9]+$ ]]; do
		echo -e "\nUnesite nenegativnu celobrojnu vrednost!\n"
	done
}
while makeValidGuess; do
	if (( echo < numFiles )); then
		echo -e "\nVasa procena je jako mala!"
	elif (( guess > numFiles )); then
		echo -e "\nVasa procena je jako velika!"
	else
		echo -e "\Bravo! Odgovor $numFiles je tacan!"
		exit
	fi
done

