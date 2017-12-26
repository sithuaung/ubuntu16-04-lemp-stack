

// ssl for multiple domain
sudo letsencrypt certonly -a webroot --webroot-path=/var/www/default/html/ -d example.org -d example.com