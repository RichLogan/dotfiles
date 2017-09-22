#!/usr/bin/env bash
#
# xinitrc

# PC/Laptop Specific commands.

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_AUTO_SCREEN_SCALE_FACTOR=1

export DUNST_FONT='Roboto 10'
export DUNST_SIZE='600x60-80+80'

export BAR_FONT="xft:Roboto Mono 40"
export BAR_HEIGHT="60"

wm="i3"

compton --config /dev/null &

xset m 1/1
xset s off -dpms
setxkbmap -option caps:escape

pulseaudio --start &
dunst -fn "$DUNST_FONT" -geometry "$DUNST_SIZE" &
mopidy &
devmon &
urxvtd -q -f &
redshift &
dropbox &

xrdb -merge "${HOME}/.Xresources"
wal -R -o wal-set

exec "${wm:-i3}"
