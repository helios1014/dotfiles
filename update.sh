#!/bin/bash
#script to update and backup
a=$(sudo find /mnt/shared_ext/timeshift/snapshots -maxdepth 1 -newermt '30 days ago'| wc -l)
if [ $(expr $a - 1) -gt 0 ]
then
  sudo pacman -Syu
else
  sudo timeshift --create --comments 'prompted by update script' --tags O
  sudo pacman -Syu
fi
