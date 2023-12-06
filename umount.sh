#!/bin/bash

umount -l /var
rm -rf /var/*
umount -l /home
rm -rf /home/*
umount -l /tmp
rm -rf /tmp/*
reboot 
