#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hA --group-directories-first --color=always'
alias magit="nvim -c MagitOnly"

PS1='[\u@\h \W]\$ '

SUDO_ASKPASS="/home/leonsch/.local/bin/dmenupass"
