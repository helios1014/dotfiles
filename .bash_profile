#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if pacman -Qi xfwm4; then
  bash Xfce_runner.sh 
else 
  :
fi
