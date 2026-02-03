#
# ~/.bashrc
#
HISTSIZE=100000
HISTFILESIZE=20000000
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"
LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi "tty*" | uniq | wc -l);
if [ $LIVE_COUNTER -eq 1 ]; then
     [ "$hostname"=='sidrat' ] && fastfetch -c ~/.config/fastfetch/laptop.jsonc || fastfetch -c ~/.config/fastfetch/desktop.jsonc
fi

#aliases
alias rb="sudo reboot now"
alias sd="sudo shutdown now"
alias vi="sudo -e"
alias pp="bash pm.sh"
alias hl='hyprlock'
alias ud='bash update.sh'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' #run git with director flag set to dotfiles and working tree is HOME
