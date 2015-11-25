#!/bin/bash
if synclient -l | grep "TouchpadOff .*=.*0" ; then
    synclient TouchpadOff=1 ;
    notify-send -i input-tablet "Touchpad desabilitado."
else
    synclient TouchpadOff=0 ;
    notify-send -i input-tablet "Touchpad habilitado."
fi

