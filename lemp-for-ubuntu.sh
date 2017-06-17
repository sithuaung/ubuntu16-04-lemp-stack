#!/usr/bin/env bash
echo " --- Well! you will get LEMP immediately! Yay. --- "

echo " --- Updating packages Lists --- "
sudo apt-get update

echo " --- Installing php-7 --- "
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.1-fpm

echo " --- Installing necessary php extensions for laravel --- "
sudo apt-get install -y php7.1-mbstring
sudo apt-get install -y php7.1-xml
sudo apt-get install -y php7.1-zip
sudo apt-get install -y php7.1-mysql

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