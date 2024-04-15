#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias lvim='sh ~/.local/bin/lvim'
alias code='sh code  --ozone-platform=wayland '
eval "$(starship init bash)"

neofetch --source ~/.config/neofetch/endeavouros_small
