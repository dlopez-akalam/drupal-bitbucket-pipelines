#!/bin/bash

# Stop on any error.
set -e

echo -e "\n\nAdding custom PHP ini"
echo -e "memory_limit = 512M\n" > /usr/local/etc/php/conf.d/90-md.ini

echo "Install chrome"
apt-get update
apt-get install -y wget
/install-chrome.sh vendor/bin

echo "Launch apache"
rm /var/www/html/ -rf
ln -s /var/webapp/docroot /var/www/html

