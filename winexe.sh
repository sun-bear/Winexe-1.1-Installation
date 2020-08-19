#!/bin/bash

echo -e "\e[31m+-+-+ WINEXE 1.1 Installation +-+-+\e[0m\n"
sleep 1
sudo apt-get -y install python2.7 libtevent-dev
sudo apt-get unstable install samba-dev
cd source
./waf configure build

