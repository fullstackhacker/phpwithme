#!/bin/bash
#$2 should be the name of the database
#$2 should be the user name to log into the database with 
#$3 should be the password of the user name for the database
#$4 should be the link to the database including port number and such

#help 
if [ $1 == '-h' ]
then 
	echo ""
	echo "Usage:"
	echo "easyfiles/addDb.sh <database_name> <username> <password> <link to the database> <port>"
	echo ""
	exit
fi

#get info 
database="'$1'"
username="'$2'"
password="'$3'"
link="'$4'"
port="'$5'"

#config file
config="php_framework/config/config.php"

#add the  database info into the file
sed -i 's/<?php/<?php\n\n$_CONFIG["'$database'_HOST"]='$link';\n$_CONFIG["'$database'_PORT"]='$port';\n$_CONFIG["'$database'_DATABASE"]='$database';\n$_CONFIG["'$database'_USER"]='$username';\n$_CONFIG["'$database'_PASSWORD"]='$password';\n/' $config

echo "Database Information added succesfully!"
