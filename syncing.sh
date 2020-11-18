#!/bin/bash
 
 

read -p 'commiting message >' -n 50
if [ $? = 0 ] ; then
	$?="auto-commit for synchronizing"
else
	echo "commit as $?"
fi
 
git pull
git add *
git add -A
git commit -m "$?"
git push -u origin master
 
 
 read 