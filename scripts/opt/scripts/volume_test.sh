#!/bin/bash
 
# $0 - icon_name, $2 - volume, $3 - id
print_cmd()
{
cat </dev/null;id=${id:-0}
idn=$(python2 -c "$(print_cmd $icon $volume $id)")
(($idn != $id)) && echo "$idn" > "$id_file"
}
 
step=5
id_file="/tmp/notify_volume.id"
 
icon_high="/usr/share/icons/elementary-xfce/notifications/48/audio-volume-high.png"
icon_low="/usr/share/icons/elementary-xfce/notifications/48/audio-volume-low.png"
icon_medium="/usr/share/icons/elementary-xfce/notifications/48/audio-volume-medium.png"
icon_muted="/usr/share/icons/elementary-xfce/notifications/48/audio-volume-muted.png"
icon_off="/usr/share/icons/elementary-xfce/notifications/48/audio-volume-off.png"
 
case $1 in
  up)
      amixer -q set Master $step+ ;;
  down)
      amixer -q set Master $step- ;;
  toggle)
      #pactl list sinks|grep -q Mute:.yes;pactl set-sink-mute 0 ${PIPESTATUS[1]} ;;
      # amixer needs -D pulse switch as a workaround for the pulseaudio
      #  http://goo.gl/4z4U6R
      amixer -q -D pulse set Master toggle ;;
  *)
      echo "Usage: $0 up/down/toggle"
      exit 1 ;;
esac
 
muted=$(amixer get Master | tail -n1 | sed -nr 's/.*\[([a-z]+)\].*/\1/p')
volume=$(amixer get Master | tail -n1 | sed -nr 's/[^\[]*.([^%]*).*/\1/p')
if ((volume==0)); then
  icon=$icon_off
elif ((volume<34)); then
  icon=$icon_low
elif ((volume<67)); then
  icon=$icon_medium
else
  icon=$icon_high
fi
if [[ $muted == "off" ]]; then
  icon=$icon_muted
fi
 
id=$(cat $id_file 2>/dev/null);id=${id:-0}
idn=$(python -c "$(print_cmd $icon $volume $id)")
(($idn != $id)) && echo "$idn" > "$id_file"
exit 0
