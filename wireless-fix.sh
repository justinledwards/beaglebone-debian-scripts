#!/bin/bash
# edit /etc/network/interfaces
# change dhcp to static and manually enter your network configuration with a static ip
# 
mkdir -p /root/wirelessfix
cd /root/wirelessfix

wget https://raw.github.com/gkaindl/beaglebone-ubuntu-scripts/master/bb-get-rcn-kernel-source.sh 
chmod +x bb-get-rcn-kernel-source.sh 
./bb-get-rcn-kernel-source.sh 

#todo add the rest
# root@arm:/usr/local/lib# tar -czvf node_modules.tar.gz node_modules/
# root@arm:~# tar -czvf npm.tar.gz .npm/
#todo un gzip later
# apt-get clean
# root@arm:/usr/share/locale# rm -rf [a-d]*
# root@arm:/usr/share/locale# rm -rf [f-k]*
# root@arm:/usr/share/locale# rm -rf [m-z]*
# root@arm:/usr/share/locale# rm -rf el/ eo/ es/ et/ et_EE/ eu/ lg/ lt/ lv/
# df -h | awk '$1=="rootfs"{print$4}' | sed 's/\M//'
