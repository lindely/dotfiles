#!/bin/sh
CONFIG_FILE="monitors-${1}.conf"

if [ ! -e "$CONFIG_FILE" ]
then
    exit 1
fi

rm monitors.conf && ln -sf "$CONFIG_FILE" monitors.conf