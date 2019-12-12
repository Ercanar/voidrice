#!/usr/bin/env sh

#Use  NVIDIA as primary GPU
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec i3
