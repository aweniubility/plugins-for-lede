#!/bin/bash
if [$1 ='auto']; then
	msg="Synchronizing"
else
	read  -p 'Commit message>' msg
	if [ -z "$msg" ]; then     
	 msg="Synchronizing"
	 echo "Committing as '$msg'"
	fi  
fi
git pull
git add *
git add -A
git commit -m "$msg"
git push -u origin master