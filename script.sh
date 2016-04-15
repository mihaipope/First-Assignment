#!/bin/bash

#Check if the user is root.

if test $UID -eq 0; then
	echo "This script can't run with root privileges!"
	exit
fi

#Display help.

if [ "$1" = "--help" ]; then
	echo "USE:"
	echo "		./script <path> [argument 1] [argument2]"
	echo "ARGUMENTS:"
	echo "		-n : print the name of the files."
	echo "		-c : print the number of the files."
	exit
fi

#Check which one of the arguments is the path and access the path.

if [ -d "$1" ]; then
	cd "$1/"
else
	if [ -d "$2" ]; then
		cd "$2/"
	else
		if [ -d "$3" ]; then
			cd "$3"
		else
			echo "The path does not exist."
			exit
		fi
	fi
fi

#Check if an argument is given more than once.

if [ "$1" = "$2" ] || [ "$1" = "$3" ] || [ "$2" = "$3" ]; then
	echo "Syntax error. Try ./script.sh --help for more info."
	exit
fi

#Check first argument.

if [ "$1" = "-n" ]; then
	ls | grep -r -l "More Open, such Stack"
else
	if [ "$1" = "-c" ]; then
		grep -r -l "More Open, such Stack" | wc -l
	fi
fi

#Check second argument.

if [ "$2" = "-n" ]; then
	ls | grep -r -l "More Open, such Stack"
else
	if [ "$2" = "-c" ]; then
		grep -r -l "More Open, such Stack" | wc -l
	fi
fi

#Check third argument.

if [ "$3" = "-n" ]; then
	ls | grep -r -l "More Open, such Stack"
else
	if [ "$3" = "-c" ]; then
		grep -r -l "More Open, such Stack" | wc -l
	fi
fi