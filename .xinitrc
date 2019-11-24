#!/usr/bin/env sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec i3
