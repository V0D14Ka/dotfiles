#
# ~/.bashrc
#

setfont ter-c28b


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias lvim='sh ~/.local/bin/lvim'
