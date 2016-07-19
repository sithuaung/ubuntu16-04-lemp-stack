#!/usr/bin/env bash

echo " --- Creating swap file with fallocate --- "
sudo fallocate -l 1G /swapfile

echo " --- Making the file only accessible to root --- "
sudo chmod 600 /swapfile

echo " --- Marking the file as swap space --- "
sudo mkswap /swapfile

echo " --- Enable the swap file --- "
sudo swapon /swapfile

echo " --- Check swap info below. --- "
sudo swapon --show

echo " --- Need to backup swap setting cuz swap setting will remove after reboot the server. --- "
sudo cp /etc/fstab /etc/fstab.bak

echo " --- Added swap info to /etc/fstab.. --- "
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab