#!/bin/bash
WALLPAPER="$1"

wal -i "$WALLPAPER" -n
killall -SIGUSR2 waybar
swaync-client -R
swaync-client -rs
cp -f ~/.cache/wal/discord.css ~/.config/vesktop/themes/pywal.css