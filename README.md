##PHP Vagrant / Puppet

A ready to run project using Vagrant and Puppet for provisioning.

##Getting Started

1. Clone the repo to your local machine
1. Download all the needed submodules into puppet/modules by:
	1. `git submodule init`
	1. `git submodule update`
1. Run `vagrant up`
1. Put all your files into the webroot directory
1. When booted go to http://localhost:8080 and http://localhost:8080/phpmyadmin
1. Check into /puppet/manifests/project.pp for the mysql dbname/login/pass

##Provided Needs

1. PHP
1. Mysql
1. Apache
1. PHPMyAdmin
1. Composer
