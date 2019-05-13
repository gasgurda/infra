#!/bin/bash
[[ -s "/home/appuser/.rvm/scripts/rvm" ]] && source "/home/appuser/.rvm/scripts/rvm"
cd /home/appuser
git clone https://github.com/Artemmkin/reddit.git
cd /home/appuser/reddit && bundle install
 



