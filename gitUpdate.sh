#!/bin/sh

if [ "$1" == "name" ]; then
	# The code below would be changing the global user name, 
	checkVal="com"
	if [[ "$2" == "$checkVal" ]]; then
		# Configuring GITHUB.COM name to the script
		git config --global user.name "intellectape"
		git config --global user.email "adi_b09@hotmail.com"
	else
		# Configuring NCSU GIT name to the script
		git config --global user.name "Aditya"
		git config --global user.email "abhardw2@ncsu.edu"
	fi
	git config --global user.name
	git config --global user.email
elif [ "$1" == "push" ]; then
	git add .
	git commit -m "\"$2\""
	git push origin "$3"
elif [ "$1" == "pull" ]; then
	git pull origin "$2"
elif [ "$1" == "check-new" ]; then
	git checkout -b "$2"
elif [ "$1" == "list-branch" ]; then
	git branch -a
fi
