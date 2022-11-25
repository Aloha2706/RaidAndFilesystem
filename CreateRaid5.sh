#!/bin/bash

sudo mdadm --zero-superblock --force /dev/sd{b,c,d,e,f}
sudo mdadm --create --verbose /dev/md0 --level 5 --raid-devices 5 /dev/sd{b,c,d,e,f}
