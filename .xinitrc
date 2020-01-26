#!/bin/bash

xset dpms 0 0 0
xset -b
xset r rate 200 30

setxkbmap de
xwallpaper --zoom "/home/leonsch/.config/wall.png"

unclutter &
sxhkd &
dwmblocks &
dunst &
xcompmgr &

exec dwm-loop
