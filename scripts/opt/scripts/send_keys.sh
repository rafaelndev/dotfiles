#/bin/bash

WID=$(xdotool search " - Mozilla Firefox" | head -1)
xdotool windowactivate $WID && xdotool key --window $WID Escape && xdotool key --window $WID Ctrl+t && xdotool type --window $WID "rl Elaine Castro" && xdotool key --window $WID Return
