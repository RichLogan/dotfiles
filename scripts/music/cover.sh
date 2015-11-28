#!/bin/bash
# Dylan's cover art script

# Set terminal title
echo -e '\033]2;'music - tile_ignore'\007'

# Hide terminal cursor
tput civis

# Cover directory
dir=$HOME/Music/covers/

# Image size
width=140
height=139

# Image offset
xoffset=0
yoffset=

# Image format
format=jpg

while :; do
	currentsong=$(mpc current | sed -e 's/\///g')

	w3m_command="0;1;$xoffset;$yoffset;$width;$height;;;;;$dir$currentsong.$format\n4;\n3;"
	echo -e "$w3m_command" | /usr/lib/w3m/w3mimgdisplay

    # Update on mpd play/pause/next/prev and database update
	mpc idle player update > /dev/null 2>&1
done
