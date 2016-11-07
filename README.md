vagrant-php7 by cakebake
========================

Vagrant box **php7.cakebake.dev** with

-	PHP 7
-	Ioncube
-	XDebug (Because of usage with ioncube, start an xdebug session with `xdebug_break();` function in your code)
-	Apache
-	Composer
-	MySQL (Root-User login with `root:root`\)

Installation
------------

1.	Download or Clone this repo
2.	Add a new hosts entry (on Linux to **/etc/hosts**) `192.168.33.99 cakebake.dev www.cakebake.dev php7.cakebake.dev www.php7.cakebake.dev`
3.	Open your terminal, navigate to this folder and start vagrant with `vagrant up`
4.	Open your browser and go to `http://localhost:8080` or `http://php7.cakebake.dev`

Usage
-----

See vagrant documentation.

Configuration
-------------

Take a look at `Vagrantfile` and `puphpet/config.yml` to change vm definition. After changes reload your VM with `vagrant reload --provision`.

XDebug is predefined for best interaction with partial encrypted code with ioncube. You could change XDebug settings in `puphpet/config.yml` and reload your VM with `vagrant reload --provision`.

License
-------

MIT
