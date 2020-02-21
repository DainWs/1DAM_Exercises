#!/bin/bash
#
#	Author: DainWs
#	GitHub: https://github.com/DainWs/
#	Date  : 20/02/2020
#
#	This SH install PHP, MYSQL, APACHE2, BIND9 for Ubuntu 18
#

sudo su

apt-get update && apt-get upgrade

apt-get install apache2 mysql-server php libapache2-mod-php bind9
apt-get install php-cli php-common php-mbstring php-gd php-intl php-xml php-mysql php-zip php-curl php-xmlrpc unzip

