#!/usr/bin/env bash
echo " --- Well! you will get LEMP immediately! Yay. --- "

echo " --- Updating packages Lists --- "
sudo apt-get update

echo " --- Install Basic necessary --- "
sudo apt-get install zip unzip git
sudo apt-get install -y software-properties-common python-software-properties

echo " --- Installing php-7 --- "
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.2-fpm

echo " --- Installing necessary php extensions for laravel --- "
sudo apt-get install -y php7.2-mbstring
sudo apt-get install -y php7.2-xml
sudo apt-get install -y php7.2-zip
sudo apt-get install -y php7.2-mysql
sudo apt-get install -y php7.2-curl

echo " --- Installing nginx --- "
sudo apt-get install -y nginx

echo " --- Installing mysql --- "
sudo apt install -y mysql-server mysql-client

echo " --- Let's secure mysql --- "
mysql_secure_installation

echo " --- Installing composer --- "
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo " --- Removing unnecessary packages --- "
sudo apt-get autoremove

echo " --- Enjoy your LEMP --- "
