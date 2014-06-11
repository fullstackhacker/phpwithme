phpwithme
==========
A PHP framework/toolkit for PHP newbies. 

Developer(s)
------------
* Mushaheed Kapadia

Motivation 
----------
A lot of php frameworks out there seem a bit too complicated for someone starting out in developing php. This is geared toward making a php framework that makes it easier to get a site up and running without having to worry about setting up and making proper configuration files and such. Also includes a toolkit that creates and edits files, so theres no hassle of making typos and dealing with errors.

It also includes a couple of libaries (listed below with links to them) and couple that I wrote that can help a new programmer with creating a dynamic site with users and making it super easy for a new php programmer to just make things work.

Overview
--------

* easybake/ -  This folder contains a couple of scripts that will help you create and edit files without having to write a single line of php or html

* php_framework/


Set up/Installation
-------------------
Simply download and run the setup.sh file. It'll get all the proper files and folders

`./setup`


Usage
-----
###To create a file: 
`easybake/makefile <type of file: controller|model|stylesheet|script|src> <path to the file from there>`

Example(s):

`easybake/makefile stylesheet newcssfile.css`

`easybake/makefile script me/like/folders/flashything.js`

`easybake/makefile controller login.php`

###To add a database: 
`easybake/adddb <type of database: MySQL|PostgreSQL|Oracle|DB2|Informix> <database_name> <username> <password> <link to the database> <port>`

Example(s):  

`easybake/adddb "MySQL" "myDB" "myUser" "myPass" "localhost" "1234"`

###To add a library: 
`easybake/addlib <absolute path to library file>`

Example(s): 

`easybake/addlib /home/usr/libraries/thisone.php`


###To connect to a database: 
In you php script (should be in the controller)



Included External Libraries
------------------
jQuery 2.1.1 - 

scrypt.php - 


To Do
------
* database.php -  model/lib - both an object and the procedural way to make a database
  -> user should only have to provide the name of the database they want to connect to (must have added it using easybake/adddb) 
* every public/src (source file) that connects to a database or does anything backend and needs to display it out to a user needs to have a corresponding controller/ file
