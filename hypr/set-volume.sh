#!/bin/sh

if [ "$1" == "up" ] ; then
  pamixer -i 2
else
  pamixer -d 2
fi

ID_FILE="/tmp/volume-notification-id"
REPLACE_ID=""
CURRENT_VOLUME=`pamixer --get-volume-human`

if [ -e $ID_FILE ] ; then
  REPLACE_ID="-r `cat $ID_FILE`"
  rm -f $ID_FILE
fi

notify-send $REPLACE_ID -a "Volume" "$CURRENT_VOLUME" "Volume gewijzigd." -p > $ID_FILE
