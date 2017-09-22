export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_AUTO_SCREEN_SCALE_FACTOR=1

export DUNST_FONT='Ubuntu Mono 10'
export DUNST_SIZE='600x60-80+80'

export BAR_FONT="xft:Ubuntu Mono 40"
export BAR_HEIGHT="60"

wm="i3"
compton --config /dev/null &

pulseaudio --start &
dunst -fn "$DUNST_FONT" -geometry "$DUNST_SIZE" &
redshift &

xrdb -merge "${HOME}/.Xresources"
wal -R -o wal-set

exec "${wm:-i3}"
