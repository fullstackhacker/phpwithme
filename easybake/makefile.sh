#!/bin/bash
# $1 = type of file (stylesheets/scripts/src)
# $2 = path to the file from there 

#check if user is looking for help
if [ $1 == '-h' ] 
then
	echo ''
	echo 'For use: '
	echo ' ./easy_site/makefile <stylesheet|script|src> <path-to-file-from-that-folder>'
	echo ''
	echo 'Example: '
	echo ' new stylesheet: ./makefile stylesheet new.css'
	echo ''
	exit
fi

#public folder directory
public="php_framework/public/$1s"

#check if the file already exists
if [ -a $public/$2 ] 
then	
	echo 'File already exists!'
	exit
fi

#make sure that all the directories exist along the way

#number of directories  + 1
total=`echo "$2" | tr '/' '\n' | wc -l`

#seperate directory names
path=`echo "$2" | tr '/' '\n'`

#counter
counter=1

#editiable file path 
newpath=$public

#create the path as you go along if it doesn't exist
for i in $path
do 
	if [ "$counter" -lt "$total" ]
	then
		if [ ! -d $newpath/$i ]
		then
			mkdir $newpath/$i
			newpath=$newpath/$i
			#echo $newpath
			counter=$((counter+1))
		fi
	fi
done

#create the file 
touch $public/$2

#set up the initial source file for the user
if [ $1 == "src" ]
then 
	echo "<?php" >> $public/$2
	echo "" >> $public/$2
	echo "" >> $public/$2
	echo "?>" >> $public/$2
	echo "<html>" >> $public/$2
	echo "  <head>" >> $public/$2
	echo "    <?php require('head.html'); ?>" >> $public/$2
	echo "  </head>" >> $public/$2
	echo "  <body>"  >> $public/$2
	echo "  </body>" >> $public/$2
	echo "</html>" >> $public/$2
fi

#check if the file got created
if [ -a $public/$2 ]
then
	echo 'File created successfully!'
	exit
fi

echo 'Failed to create file'
