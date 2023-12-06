#!/bin/bash
mount /dev/vg00/lv_var /mnt
cp -a /var/. /mnt/
umount /mnt
mount /dev/vg00/lv_home /mnt
cp -a /home/. /mnt
umount /mnt
mount /dev/vg00/lv_tmp /mnt
cp -a /tmp/. /mnt
umount /mnt

