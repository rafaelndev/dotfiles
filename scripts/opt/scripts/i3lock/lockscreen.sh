#!/bin/bash
ICON=/opt/scripts/i3lock/icon.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
#convert $TMPBG -scale 10% -scale 1000% $TMPBG

TEXT="Digite a senha para desbloquear"
# Cria a imagem com o efeito de blur
convert $TMPBG -scale 10% -scale 1000% -fill black -colorize 75% $TMPBG
# Coloca o ícone de chave no meio da imagem
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
# Adiciona um texto embaixo do ícone
convert $TMPBG -fill white -pointsize 30 -gravity center -annotate +0+160 "$TEXT" $TMPBG

/opt/scripts/playercontrol pause &
i3lock -i $TMPBG
conky -w $(xwininfo -name i3lock | awk '/xwininfo/ {print $4}')
