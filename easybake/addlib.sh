#!/bin/bash
#$1 should be the path to the library the user wants to add

#help menu
if [ $1 == '-h' ]
then 
	echo ''
	echo 'Usage:'
	echo 'easybake/addlib.sh <absolute (or relative to the directory that contains the framework) path to the library you want to add>'
	exit
fi

#copy file over 
cp $1 "php_framework/libs/"
echo "Library added"
