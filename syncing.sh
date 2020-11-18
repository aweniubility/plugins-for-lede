#!/bin/bash

read  -p 'commit message>'  
 if [ -z "$?" ]; then
     
	 $?="auto-commit for synchronizing"
 fi
 
echo "committing : $?"
git pull
git add *
git add -A
git commit -m "$?"
git push -u origin master
 
 
