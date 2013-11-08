#!/bin/bash
# edit /etc/network/interfaces
# change dhcp to static and manually enter your network configuration with a static ip
# 
freespace=`df -h | awk '$1=="rootfs"{print$4}' | sed 's/\M//'`
if [ $freespace -lt 900 ]; then
  echo "not enough free space"
  exit 1;
fi

#stuff I did to free up space
# root@arm:/usr/local/lib# tar -czvf node_modules.tar.gz node_modules/
# root@arm:~# tar -czvf npm.tar.gz .npm/
#todo un gzip later
# apt-get clean
# root@arm:/usr/share/locale# rm -rf [a-d]*
# root@arm:/usr/share/locale# rm -rf [f-k]*
# root@arm:/usr/share/locale# rm -rf [m-z]*
# root@arm:/usr/share/locale# rm -rf el/ eo/ es/ et/ et_EE/ eu/ lg/ lt/ lv/

mkdir -p /root/wirelessfix
cd /root/wirelessfix

wget https://raw.github.com/gkaindl/beaglebone-ubuntu-scripts/master/bb-get-rcn-kernel-source.sh 
chmod +x bb-get-rcn-kernel-source.sh 
./bb-get-rcn-kernel-source.sh 




wget ftp://WebUser:r3iZ6vJI@209.222.7.36/cn/wlan/RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911.zip
unzip RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911.zip 
cd RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911
tar -xzf rtl8188C_8192C_usb_linux_v4.0.2_9000.20130911.tar.gz 
cd rtl8188C_8192C_usb_linux_v4.0.2_9000.20130911
wget https://raw.github.com/cmicali/rtl8192cu_beaglebone/master/util/rtl-8192-beaglebone-linux-3.8.patch
patch -p1 < rtl-8192-beaglebone-linux-3.8.patch
make CROSS_COMPILE=
echo "blacklist rtl8192cu" > /etc/modprobe.d/blacklist.conf
modprobe  8192cu

