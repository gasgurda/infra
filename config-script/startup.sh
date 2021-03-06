#!/bin/bash

if [ -n "$(echo $(ruby -v) | grep 2.4.1)" ]
then
echo "Ruby work"
else
gpg --keyserver hkp://keys.gnupg.net --recv-keys 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

curl -sSL https://get.rvm.io | bash -s stable

#source ~/.rvm/scripts/rvm
source /etc/profile.d/rvm.sh

rvm requirements

rvm install 2.4.1

rvm use 2.4.1 --default

gem install bundler -V --no-ri --no-rdoc
fi

if [ -n "$(systemctl list-unit-files | grep mongod)" ]

then
echo "MongoDB already installed"
else

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" >  /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt-get update
sudo apt-get install -y mongodb-org

sudo systemctl start mongod

sudo systemctl enable mongod

fi

if [ -d reddit ]

then
cd reddit && puma -d

else
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
puma -d

fi
