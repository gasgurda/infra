#!/bin/bash
#[[ -s "/home/appuser/.rvm/scripts/rvm" ]] && source "/home/appuser/.rvm/scripts/rvm"
cd /home/appuser
git clone https://github.com/Artemmkin/reddit.git
bash -lc "cd /home/appuser/reddit && bundle install"
wget -O /etc/systemd/system/puma.service https://github.com/gasgurda/infra/blob/base-os-packer/packer/files/puma.service
#systemctl enable puma.service


