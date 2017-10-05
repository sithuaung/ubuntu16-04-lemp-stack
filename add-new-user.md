## Set up a new user.
```
adduser sithu // Add your password
usermod -aG sudo sithu
su - sithu
mkdir ~/.ssh
chmod 700 ~/.ssh
vim ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
exit
sudo vim /etc/ssh/sshd_config // Disable password authentication.
sudo systemctl reload sshd
ssh sithu@you_ip
```

## Change the application pemission
```
sudo chown sithu:sithu /var/www/html/{your_app}
```
## Change permission for nginx
```
sudo chgrp -R www-data storage bootstrap/cache
sudo chmod -R ug+rwx storage bootstrap/cache
```