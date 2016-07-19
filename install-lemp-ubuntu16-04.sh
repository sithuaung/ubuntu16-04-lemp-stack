#!/usr/bin/env bash
echo " --- Well! you will get LEMP immediately! Yay. --- "

echo " --- Updating packages Lists --- "
sudo apt-get update

echo " --- Installing php-7 --- "
sudo apt install php7.0-cli

echo " --- Installing nginx --- "
sudo apt-get install nginx

echo " --- Installing mysql --- "
sudo apt install mysql-server mysql-client

echo " --- Installing composer --- "
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer


echo " --- Installing necessary extensions for laravel --- "
sudo apt-get install php7.0-mbstring
sudo apt-get install php-xml
sudo apt-get install php7.0-zip
sudo apt-get install php7.0-fpm

echo " --- Enjoy your LEMP --- "
