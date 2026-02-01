#!/bin/bash
echo 'Would you like to start an Xfce session today?' | pv -qL 15
read response
if [[ ${response,,}=='y' ]]; then
  startxfce4 > /dev/null
else
  echo 'Please enjoy the terminal session.'
fi
