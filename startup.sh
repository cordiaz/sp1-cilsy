#!/bin/bash
echo "check update"
sudo apt-get update -y
echo "Install web server"
sudo apt-get install -y apache2 php php-mysql
sudo apache 2 service apache2 start
echo "Install Database Server"
sudo apt-get install -y mysql-server
sudo service mysql start

