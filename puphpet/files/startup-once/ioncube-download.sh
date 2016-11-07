#!/bin/bash
echo "DOWNLOADING ICONCUBE LOADERS ..."
sleep 5
curl -SL http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz | tar xzv --directory /usr/lib/php/20151012 --strip-components=1
echo "zend_extension=ioncube_loader_lin_7.0.so" > /etc/php/7.0/fpm/conf.d/00-ioncube.ini
echo "zend_extension=ioncube_loader_lin_7.0.so" > /etc/php/7.0/cli/conf.d/00-ioncube.ini
service php7.0-fpm restart
service apache2 restart
echo "FINISHED IONCUBE SETUP."
