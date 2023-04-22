#!/bin/sh
# Author: https://github.com/prasanthrangan/
# Source: https://github.com/prasanthrangan/hyprdots/blob/main/Configs/.config/hypr/dontkillsteam.sh
if [[ $(hyprctl activewindow -j | jq -r ".class") == "Steam" ]]; then
    xdotool windowunmap $(xdotool getactivewindow)
else
    hyprctl dispatch killactive ""
fi
