#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A ROOT User" 1>&2
   exit 1
fi
# ...

swapon --all

fallocate -l 200g /mnt/200GiB.swap

chmod 600 /mnt/200GiB.swap

mkswap /mnt/200GiB.swap

swapon /mnt/200GiB.swap

cat /proc/swaps

echo '/mnt/200GiB.swap swap swap defaults 0 0' | sudo tee -a /etc/fstab

reboot

free -h
