#!/bin/bash

export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:/home/leonsch/.cabal/bin/"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"
export READER="zathura"
export FILE="ranger"

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx
