#!/bin/bash
# $1 = type of file (stylesheets/scripts/src/model)
# $2 = path to the file from there 

#check if user is looking for help
if [ $1 == '-h' ] 
then
	echo ''
	echo 'For use: '
	echo ' ./easy_site/makefile <model|controller|stylesheet|script|src> <path-to-file-from-that-folder>'
	echo ''
	echo 'Example: '
	echo ' new stylesheet: ./makefile stylesheet new.css'
	echo ''
	exit
fi

#set it to the public directory
public="php_framework/public/$1s"

#check if user is creating model object
if [ $1 == "model" ] 
then 
	#if the user is creating model, change it to the model directory
	public="php_framework/models"
fi

#check if user is creating controller script
if [ $1 == "controleler" ] 
then 
	#if user is creating a controller, set the path to the controller directory
	public="php_framework/controllers"
fi

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

#get the filename
filename=`echo "$2" | tr '/' '\n' | tail -n 1`
classname=`echo "$filename" | tr '.' '\n' | head -n 1`

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
	echo "/* php goes here */" >> $public/$2
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

#set up the initial model file for the user
if [ $1 == "model" ]
then 
	echo "<?php" >> $public/$2
	echo "  /**" >> $public/$2
	echo "   * $classname" >> $public/$2
	echo "   * Created by: " >> $public/$2
	echo "   */" >> $public/$2
	echo "  class $classname {" >> $public/$2
	echo "" >> $public/$2
	echo "		//mark" >> $public/$2
	echo "" >> $public/$2
	echo "    function __construct(){" >> $public/$2
	echo "" >> $public/$2
	echo "    }" >> $public/$2
	echo "  }" >> $public/$2
	echo "?>" >> $public/$2
fi

#set up the intial controller file for the user
if [ $1 == "controller" ] 
then 
	echo "<?php" >> $public/$2
	echo "" >> $public/$2
	echo "" >> $public/$2
	echo "?>" >> $public/$2
fi

#check if the file got created
if [ -a $public/$2 ]
then
	echo 'File created successfully!'
	exit
fi

echo 'Failed to create file'
