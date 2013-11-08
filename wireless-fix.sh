#!/bin/bash
mkdir -p /root/wirelessfix
cd /root/wirelessfix

wget https://raw.github.com/gkaindl/beaglebone-ubuntu-scripts/master/bb-get-rcn-kernel-source.sh 
chmod +x bb-get-rcn-kernel-source.sh 
./bb-get-rcn-kernel-source.sh 

#todo add the rest
