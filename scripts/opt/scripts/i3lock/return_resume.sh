#!/bin/sh
sleep 10
killall conky

while [[ $(xdpyinfo -display "$display" > /dev/null 2>&1) -ne 0 ]] ; do
  sleep 1
  echo $DISPLAY
done
 DISPLAY=:0 /usr/bin/conky -c /opt/scripts/i3lock/conky_acordando -w $(DISPLAY=:0 xwininfo -name i3lock | awk '/xwininfo/ {print $4}')
