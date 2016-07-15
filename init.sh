#!/bin/bash

sudo apt-get update > /dev/null

sudo apt-get install tcl8.5

mkdir /opt/redis

cd /opt/redis
# Use latest stable
wget http://download.redis.io/releases/redis-stable.tar.gz
# Only update newer files
tar xzf redis-stable.tar.gz

cd redis-stable
make
sudo make install
cd utils
sudo ./install_server.sh

sudo service redis_6379 start

# Copy custom .conf file for nginx
sudo cp /vagrant/nginx.conf /etc/nginx/conf.d/default.conf
sudo chmod 644 /etc/nginx/conf.d/default.conf
sudo service nginx reload