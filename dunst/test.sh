#!/bin/sh
killall dunst
dunst &
dunstify "Critical alert" "Example of a critical alert." -u critical &
dunstify "Regular notification" "Example of a regular notification message." &
dunstify "Insignificant alert" "Example of a low priority notification." -u low &
