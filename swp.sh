swapon --all

fallocate -l 200g /mnt/200GiB.swap

chmod 600 /mnt/200GiB.swap

mkswap /mnt/200GiB.swap

swapon /mnt/200GiB.swap

cat /proc/swaps

echo '/mnt/200GiB.swap swap swap defaults 0 0' | sudo tee -a /etc/fstab

reboot

free -h
