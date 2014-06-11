phpwithme
==========

Developer(s)
------------
* Mushaheed Kapadia

Motivation 
----------
A lot of php frameworks out there seem a bit too complicated for someone starting out in developing php. This is geared toward making a php framework that makes it easier to get a site up and running without having to worry about setting up and making proper configuration files and the like. 

It also includes a couple of libaries (listed below with links to them) and couple that I wrote that can help a new programmer with creating a dynamic site with users and the like.

Set up/Installation
-------------------
Simply download and run the setup.sh file. It'll get all the proper files and folders

`./setup.sh`


Usage
-----
###To create a file: 

`easybake/makefile.sh <type of file: controller|model|stylesheet|script|src> <path to the file from there>`

An example: `easybake/makefile.sh stylesheet newcssfile.css`

Or: `easybake/makefile.sh script me/like/folders/flashything.js`

###To add a database: 
`easybake/adddb.sh <type of database: MySQL|PostgreSQL|Oracle|DB2|Informix> <database_name> <username> <password> <link to the database> <port>`

An example:  `easybake/adddb.sh "MySQL" "myDB" "myUser" "myPass" "localhost" "1234"`

###To add a library: 
`easybake/addlib.sh <absolute path to library file>`

An example: `easybake/addlib.sh /home/usr/libraries/thisone.lib`


To Do:
------
* database.php -  model/lib - both an object and the procedural way to make a database
  -> user should only have to provide the name of the database they want to connect to (must have added it using easybake/adddb(.sh)) 
* every public/src (source file) that connects to a database or does anything backend and needs to display it out to a user needs to have a corresponding controller/ file
* remove .sh extensions and see if things still work (they should)
* add changing permissions to setup(.sh)
* add <type of database> as an argument for easybake/adddb(.sh)

