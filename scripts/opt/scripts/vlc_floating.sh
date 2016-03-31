#!/bin/bash

# Executar VLC
# vlc --qt-minimal-view --no-fullscreen $1&
mpv --ytdl-format=best $1&

# Esperar VLC abrir para reduzir o tamanho da janela
while :; do
  if [[ $(xdotool search -sync -all -onlyvisible --class mpv) ]]; then
    # Modificar a janela do VLC para floating
    # Mudar o tamanho da janela e mover para o canto do monitor
    i3-msg '[class="mpv"] floating enable, sticky enable, resize set 400 200, move position 960 560'
    exit
  fi
done
