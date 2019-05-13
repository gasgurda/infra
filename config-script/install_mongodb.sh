#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" >  /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo "apt-get update"
sudo apt-get update
echo "Installing mongodb"
sudo apt-get install -y mongodb-org

sudo systemctl start mongod

sudo systemctl enable mongod
