#!/bin/sh

apt-get install php5 php-pear php5-xdebug;

#Phing
pear channel-discover pear.phing.info
pear install --alldeps phing/phing

#Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

#phpunit
pear config-set auto_discover 1
pear install pear.phpunit.de/PHPUnit-3.7.35