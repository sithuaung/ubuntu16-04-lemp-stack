### Introduction
When I need to setup a new server for laravel project, I'm sick of googling and installing. So a little shell script here.

### Install LEMP
You bought a ubuntu 16.04 server and you want to setup LEMP.
just use 
<pre>
install-lemp-ubuntu16-04.sh
</pre>
Above shell will install php7.0, mysql 5.7, nginx 1.10 and a few extensions for laravel up and running.
Just watch with a cup of coffee. But you'll need to type mysql root password.

### Sample configuration file ( nginx )
<pre>
default
</pre>
Above configuration need to put under /etc/nginx/sites-availables
with the file name you want.

### swap creating script
<pre>
enable-swap.sh
</pre>
Just run the above script and will create 1GB swap for you.

### storage permission
If I need to give permission to storage directory, I just simple give 777. aweful right? Yeah. don't do that. Go to laravel project root and type this commands.
<pre>
sudo chgrp -R www-data storage bootstrap/cache && sudo chmod -R ug+rwx storage bootstrap/cache
</pre>

That's it. Enjoy.
