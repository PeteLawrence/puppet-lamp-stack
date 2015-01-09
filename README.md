# LAMP Stacks Made Easy with Vagrant & Puppet

Builds a LLMP (Linux, lighttpd, mysql, php) stack using Puppet and Vagrant.

## Prerequisites
* [Vagrant](http://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org/)

## Instructions
0. Ensure Vagrant and Virtual Box are installed.
1. Clone this repository.
2. Create directory "webroot" in the root directory of the clone. This will act as your root web folder.
3. Open up terminal, change directory to the git repo root, and start the vagrant box.

        $ vagrant up

You're all set up. The webserver will now be accessible from http://localhost:8888

## System Package include

* lighttpd
* php5
* php5-cli
* php5-mysql
* php-pear - installed packages: phpunit and its dependencies
* php5-dev
* php5-gd
* php5-mcrypt
* libapache2-mod-php5
* mysql-server
* curl
* vim
* htop
