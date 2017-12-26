https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-16-04

// ssl for multiple domain
sudo letsencrypt certonly -a webroot --webroot-path=/var/www/default/html/ -d example.org -d example.com