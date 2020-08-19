#Tolga AKKAPULU
# /tolgaakkapulu

#!/bin/bash

echo -e "\e[31m+-+-+ WINEXE 1.1 Installation +-+-+\e[0m\n"
sleep 1
echo -e "\e[1;34msudo apt-get -y install gcc-mingw-w64 comerr-dev libpopt-dev libbsd-dev zlib1g-dev libc6-dev python-dev libacl1-dev libldap2-dev git\e[0m"
sleep 1
sudo apt-get -y install gcc-mingw-w64 comerr-dev libpopt-dev libbsd-dev zlib1g-dev libc6-dev python-dev libacl1-dev libldap2-dev git
echo -e "\e[1;34mtar zxvf samba-4.1.23.tar.gz\e[0m"
sleep 1
tar zxvf samba-4.1.23.tar.gz
sudo chmod +x -R . && \
echo -e "\e[1;34mtar zxvf winexe-winexe-waf.tar.gz\e[0m"
sleep 1
tar zxvf winexe-winexe-waf.tar.gz
sudo chmod +x -R . && \

echo -e "\e[1;34mcd winexe-winexe-waf/source\e[0m"
sleep 1
cd winexe-winexe-waf/source

sed "s/stlib='smb_static bsd z resolv rt'/stlib='smb_static z rt'/g" wscript_build
sleep 1
sed "s/lib='dl'/lib='dl resolv bsd'/g" wscript_build
sleep 1

echo -e "\e[1;34m./waf --samba-dir=../../samba-4.1.23 configure build\e[0m"
sleep 1
./waf --samba-dir=../../samba-4.1.23 configure build

echo -e "\e[1;34msudo cp build/winexe-static /usr/local/bin/winexe\e[0m"
sleep 1
sudo cp build/winexe-static /usr/local/bin/winexe
sudo chmod +x -R . && \

echo -e "\n\e[31mUsage : \e[0m\e[1;34mwinexe -U domain/username%password //ip_address 'command'\e[0m"
echo -e "\n\e[31m+-+-+ WINEXE 1.1 Installation Complete +-+-+\e[0m"
