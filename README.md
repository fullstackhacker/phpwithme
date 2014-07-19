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

* `config/` - This folder contains the configuration files

* `controllers/` - This folder contains the controller files. Controller files get all the data for the 'View' to display. In this framework, the 'view' folder is known as the 'public' folder

* `libs/` -  This folder contains all the php libraries that you want to include

* `models/` - This folder contains all the objects 

* `public/` - This folder is the publically exposed part of the site - you want to set your DIRECTORYROOT to point at this folder 

* `public/scripts/` - This folder contains all your javascript files

* `public/stylesheets/` - This folder contains all you stylesheets

* `public/views/` - This folder contains the frontend files beside the index.php file that is located in the public directory - Every file in here that is rendered by some sort of backend work (i.e. using a database) should have a counter-part in the controllers folder that does the actual work

Set up/Installation - Linux/Unix
---------------------------
To start using phpwithme, first you'll need to download the program

Run the following commands in your terminal: 

`wget phpwithme.mushaheedkapadia.com/installpwm`
`./installpwm`

Create a Web Application
------------------------
After setting up pwm as stated above, to create your pwm project: 

`pwm new <app_name>`

This will go ahead an create all the folders and files you'll need to get started. 

After creating the project, go ahead and cd in: 

`cd <app_name>`

Usage
-----
There are a series of commands that you can run via pwm 

###Adding
####Databases
To add a database to your php application: 
`pwm add db <type: MySQL|PostgreSQL> <name> <host> <port> <username> <password>`

####Libraries 
To add an external library to your php applcation: 
`pwm add lib <path/to/the/library>`


###Creating

###Editing

###Removing

Included External Libraries
---------------------------
[jQuery-2.1.1.min.js](http://jquery.com "jQuery") - jQuery library for the those that love jQuery for their javascript needs. It's located in `php_framework/public/scripts/` directory

[scrypt.php](http://github.com/domblack/php-scrypt "scrypt") - An encryption protocol for storing user passwords. You don't have to worry about using this if you use our `user.php` class.

Version History
---------------
[Version: 1.0](http://github.com/kapadiamush/phpwithme/tree/master#version-10 "Version 1.0") - Intial Release 
[Version: 2.0](http://github.com/kapadiamush/phpwithme/tree/master#version-20 "Version 2.0") - PWM CORE RELEASE

Version 2.0
-----------
In version 2, we introduced pwm - a core utility that removed the toolkit box of scripts. 


Version 1.0
-----------
Version 1.0 was the initial release of phpwithme. It contained the basic files to create a website, including a database and user object. It also had a toolkit containing shell scripts to create new files, add fields to classes, add a database to your site, and add an external library.
