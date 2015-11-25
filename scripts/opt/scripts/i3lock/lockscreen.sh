#!/bin/bash
ICON=/opt/scripts/i3lock/icon.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
#convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG -scale 10% -scale 1000% -fill black -colorize 75% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG

dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop  2>/dev/null
i3lock -i $TMPBG
sleep 0.5; 
conky -w $(xwininfo -name i3lock | awk '/xwininfo/ {print $4}') 2>/dev/null &
