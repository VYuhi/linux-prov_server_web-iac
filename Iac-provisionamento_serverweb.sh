#!/bin/bash

echo "starting"

#updating the server:

apt-get update
apt-get upgrade -y

#installing apache2, unzip:

apt-get install apache2 -y
apt-get install unzip -y

#Download the uploaded file and unzip:

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

#copying files to /var/www/html/:

cd  linux-site-dio-main
cp -R * /var/www/html/

echo "end"
