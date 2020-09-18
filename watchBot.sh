#!/bin/bash
path="/home/aditya/Desktop/Auto-Git-Bot" #add the directory path to be monitored for changes
echo "---AutoGitBot Active---"
echo "Now Monitoring for Changes ...."
while true 
do
	inotifywait --recursive -qq -e attrib,create,delete,modify,delete_self,move,move_self,close_write $path  #inotfy-tools check for directory changes
	cd $path
	git add --all		#add all modifications
	checkin=$(date)		#current time variable
	echo "New Changes Detected @ $checkin"
	echo "Commiting New Changes Locally"
	git commit -m "AutoGitBot: Changes Added @ $checkin"		#commiting or finalising changes
	git pull		#checking for new changes/updates on remote repo
	git push -u origin master		#pushing into remote repo
	echo "Changes are now Updated with Remote Repo Successfully"
	echo "Now Monitoring for Changes .... (Ctrl + Z to Exit)"		#checking for future changes
done
