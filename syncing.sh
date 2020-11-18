#!/bin/bash

read  -p 'commit message>'  
 if [ -z "$?" ]; then
     echo "committing as comment : 'auto-commit for synchronizing'"
	 ?="auto-commit for synchronizing"
 fi
git pull
git add *
git add -A
git commit -m "$?"
git push -u origin master
 
 
