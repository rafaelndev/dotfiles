#!/usr/bin/env bash

RATIO=$1

WID=$(pfw)
ROOT=$(lsw -r)
SW=$(wattr w $ROOT)
SH=$(wattr h $ROOT)

wrs -a $((RATIO * SW / 100)) $((RATIO * SH / 100)) $WID
