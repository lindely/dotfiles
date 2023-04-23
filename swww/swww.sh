#!/usr/bin/env sh

# Dit script gaat ervan uit dat er al actieve symlinks wp.landscape en 
# wp.portrait aanwezig zijn.

SetWallpaper()
{
  # Pad naar actieve achtergrond.
  SRC=`readlink $BASEDIR/wp.$MODE`
  # Lijst van beschikbare achtergronden in dezelfde directory.
  LIST=(`dirname "$SRC"`/*)

  for ((i=0; i<${#LIST[@]}; i++))
  do
    # Als het laatste bestand actief is, maak dan het eerste actief.
    if [ $((i + 1)) -eq ${#LIST[@]} ] ; then
      ln -sf "${LIST[0]}" $BASEDIR/wp.$MODE
    # Maak het volgende bestand actief.
    elif [ "${LIST[i]}" == "${SRC}" ] ; then
      ln -sf "${LIST[i + 1]}" $BASEDIR/wp.$MODE
      break 
    fi
  done

  # Bepaal beeldscherm op basis van de actieve mode.
  if [[ "$MODE" = "landscape" ]] ; then
    OUTPUT="DP-1"
  else
    OUTPUT="DP-3"
  fi

  swww img -o $OUTPUT $BASEDIR/wp.$MODE \
    --transition-bezier .43,1.19,1,.4 \
    --transition-type grow \
    --transition-duration 1 \
    --transition-fps 120 \
    --transition-pos bottom-right
}

# Directory van waaruit gewerkt wordt (locatie van dit bestand).
BASEDIR=`dirname $(realpath $0)`

# Start daemon als deze nog niet actief is.
swww query
if [ $? -eq 1 ] ; then
  swww init
  sleep 2.5
fi

MODE=landscape
SetWallpaper

MODE=portrait
SetWallpaper

# Maak een blurry versie die in rofi wordt gebruikt.
convert -scale 10% -blur 0x2.5 -resize 1000% $BASEDIR/wp.landscape $BASEDIR/wp.blur
