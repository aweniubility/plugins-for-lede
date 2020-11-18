#!/bin/bash

read  -p 'commit message>' msg
 if [ -z "$?" ]; then     
	 $msg="auto-commit for synchronizing"
 fi
 
echo "committing : $msg"
git pull
git add *
git add -A
git commit -m "$?"
git push -u origin master
 
 
