#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if pacman -Qi xfwm4 > /dev/null 2>&1; then
  bash Xfce_runner.sh 
else 
  :
fi
