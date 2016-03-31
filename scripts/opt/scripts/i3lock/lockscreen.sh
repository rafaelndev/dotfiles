#!/bin/bash
ICON=/opt/scripts/i3lock/icon.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
#convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG -scale 10% -scale 1000% -fill black -colorize 75% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG

/opt/scripts/playercontrol pause &
i3lock -i $TMPBG
conky -w $(xwininfo -name i3lock | awk '/xwininfo/ {print $4}')
