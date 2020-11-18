#!/bin/bash

read  -p 'commit message>'  msg
 if [ -z "$msg" ]; then
     echo "committing as comment : 'auto-commit for synchronizing'"
	 msg="auto-commit for synchronizing"
 fi
git pull
git add *
git add -A
git commit -m "$msg"
git push -u origin master
 
 
