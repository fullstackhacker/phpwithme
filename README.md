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

* `php_framework/` -  This folder contains the entire website

* `php_framework/config` - This folder contains the configuration files

* `php_framework/controller` - This folder contains the controller files. Controller files get all the data for the 'View' to display. In this framework, the 'view' folder is known as the 'public' folder

* `php_framework/libs` -  This folder contains all the php libraries that you want to include

* `php_framework/models` - This folder contains all the objects 

* `php_framework/public` - This folder is the publically exposed part of the site - you want to set your DIRECTORYROOT to point at this folder 

* `php_frameowrk/public/scripts` - This folder contains all your javascript files

* `php_framework/public/stylesheets` - This folder contains all you stylesheets

* `php_framework/public/srcs` - This folder contains all php files beside the index.php file that is located in the public directory - Every file in here that is rendered by some sort of backend work (i.e. using a database) should have a counter-part in the controllers folder that does the actual work

Set up/Installation
-------------------
Simply download and run the setup.sh file. It'll get all the proper files and folders

`./setup`


Usage
-----
###To create a file: 
`easybake/makefile [ -c ] <type of file: controller|model|stylesheet|script|src> <path to the file from there>`
	
Flag(s): 

 -c = create a counterpart controller/src file with your src/controller file 

Example(s):

`easybake/makefile stylesheet newcssfile.css`

`easybake/makefile script me/like/folders/flashything.js`

`easybake/makefile controller login.php`

`easybake/makefile -c controller login.php`	 = creates a src file in `php_framework/public/srcs`

###To add a database: 
`easybake/adddb <type of database: MySQL|PostgreSQL|Oracle|DB2|Informix> <database_name> <username> <password> <link to the database> <port>`

Example(s):  

`easybake/adddb "MySQL" "myDB" "myUser" "myPass" "localhost" "1234"`

###To add a library: 
`easybake/addlib <absolute path to library file>`

Example(s): 

`easybake/addlib /home/usr/libraries/thisone.php`


###To connect and query a database: 
In you php script, which should be in the controller,

		$dbobj = new database($dbname);

		$dbobj->prepare($sqlstring);

		$dbobj->execute();

		while(($row = $dbobj->getNextRow()) !== false){
			/* do stuff here	*/
		}

		$dbobj->close();


Currently, only the following database types are supported (or rather tested): 

*  
* 
* 

Included External Libraries
---------------------------
jQuery 2.1.1 - 

scrypt.php - 


To Do
------
* database.php -  model/lib - both an object and the procedural way to make a database
  -> user should only have to provide the name of the database they want to connect to (must have added it using easybake/adddb) 
