#!/bin/sh
msgId="207724"

if [ $# -eq 0 ]; then
  echo "Geef volume als parameter op: $0 +5%"
  exit 0
fi

if [[ "$1" == "mute" ]]; then
  pactl -- set-sink-mute @DEFAULT_SINK@ toggle
else
  pactl -- set-sink-volume @DEFAULT_SINK@ $1
fi

volume="$(pactl -- get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')"
muted="$(pactl -- get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')"

if [[ "$volume" == "0%" || "$muted" == "yes" ]]; then
  dunstify -a "change-volume" -u low -i audio-volume-muted -r "$msgId" "Geluid gedempt"
else
  dunstify -a "change-volume" -u low -i audio-volume-high -r "$msgId" -h int:value:"$volume" "Volume: ${volume}"
fi
