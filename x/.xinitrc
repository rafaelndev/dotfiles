#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# export QT_STYLE_OVERRIDE=gtk2
export QT_QPA_PLATFORMTHEME=qt5ct

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

