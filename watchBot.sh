#!/bin/bash
path="/home/aditya/Desktop/Auto-Git-Bot" #add the directory path to be monitored for changes
echo "---AutoGitBot Active---"
echo "Now Monitoring for Changes ...."
while true 
do
	inotifywait --recursive -qq -e attrib,create,delete,modify,delete_self,move,move_self,close_write $path
	cd $path
	git add --all
	checkin=$(date)
	echo "New Changes Detected @ $checkin"
	git commit -m "AutoGitBot: Changes Added @ $checkin"
	git pull
	git push -u origin master
	echo "Changes are Updated with Remote"
	echo "Now Monitoring for Changes .... (Ctrl + Z to Exit)"
done
