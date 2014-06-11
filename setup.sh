#/bin/bash

host="eden.rutgers.edu/~msk154/phpwithme"
dbw="php_framework"
eb="easybake"

#set up the initial directories
mkdir $dbw
mkdir $eb

echo "made the initial directories"

#set up the framework
mkdir $dbw/config
mkdir $dbw/controllers
mkdir $dbw/libs
mkdir $dbw/models
mkdir $dbw/public 
mkdir $dbw/public/srcs
mkdir $dbw/public/stylesheets
mkdir $dbw/public/scripts

echo "made the framework directories"

###get all the framework files
#get config files
cd $dbw/config
wget $host/$dbw/config/config.php
cd ../..

echo "got the configuration files"

#get controller files
cd $dbw/controllers
cd ../..
echo "got the controller files" 

#get libs files
cd $dbw/libs
wget $host/$dbw/libs/scrypt.php
wget $host/$dbw/libs/jquery-2.1.1.min.js
cd ../..
echo "got the libs files" 

#get models files 
cd $dbw/models
cd ../..
echo "got the models file" 

#get public files
cd $dbw/public
wget $host/$dbw/index.php
cd ../..
echo "got the public files" 

#get public source files
cd $dbw/public/srcs
wget $host/$dbw/public/srcs/head.html
cd ../../..
echo "got the public source files"

#get public stylesheets files 
cd $dbw/public/stylesheets
wget $host/$dbw/public/stylesheets/reset.css
wget $host/$dbw/public/stylesheets/global.css
cd ../../..
echo "got the stylesheets"

#get public scripts files 
cd $dbw/public/scripts
wget $host/$dbw/public/scripts/global.js
cd ../../..
echo "got the script files"

#get all the easybake files
cd $eb
wget $host/$eb/adddb.sh
wget $host/$eb/makefile.sh
wget $host/$eb/addfieldsto.sh
wget $host/$eb/addlib.sh
cd ..
echo "got the easybake files"


echo ""
echo "Setup Complete!"
echo "Please run all commands out of this directory:"
echo `pwd`
echo "Thank you!"
echo ""
