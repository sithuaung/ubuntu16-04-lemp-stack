#!/bin/bash

# add storage-permission alias to ~/.bashrc file
echo "alias storage-permission='sudo chgrp -R www-data storage bootstrap/cache && sudo chmod -R ug+rwx storage bootstrap/cache'" >> ~/.bashrc

# source the ~/.bashrc file
. ~/.bashrc