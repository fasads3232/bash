#!/bin/bash

lvcreate -L16G -n lv_var vg00
mkfs.ext4 -m0 /dev/vg00/lv_var
echo '/dev/vg00/lv_var /var ext4 defaults 0 0' >> /etc/fstab

lvcreate -L14G -n lv_home vg00
mkfs.ext4 -m0 /dev/vg00/lv_home
echo '/dev/vg00/lv_home /home ext4 defaults 0 0' >> /etc/fstab

lvcreate -l 100%FREE -n lv_tmp vg00
mkfs.ext4 -m0 /dev/vg00/lv_tmp
echo '/dev/vg00/lv_tmp /tmp ext4 defaults 0 0' >> /etc/fstab

pvcreate /dev/sdb
vgcreate vg01 /dev/sdb
lvcreate -l 100%FREE -n lv_opt /dev/vg01
mkfs.ext4 -m0 /dev/vg01/lv_opt
echo '/dev/vg01/lv_opt /opt ext4 defaults 0 0' >> /etc/fstab


