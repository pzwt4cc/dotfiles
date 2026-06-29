#!/bin/bash

TARGET_FILE="$HOME/.cache/wal/colors"

generate_colors() {
    if [ -f "$TARGET_FILE" ]; then
        color1=$(sed -n '2p' "$TARGET_FILE" | sed 's/#//')
        color2=$(sed -n '5p' "$TARGET_FILE" | sed 's/#//')

        cat <<EOF > "$HOME/.config/hypr/script/colors-wal.conf"
\$color_active_1 = rgba(${color1}ff)
\$color_active_2 = rgba(${color2}ff)
EOF
        hyprctl reload
    fi
}

generate_colors

while true; do
    if command -v inotifywait &> /dev/null; then
        inotifywait -e modify "$TARGET_FILE" &> /dev/null
    else
        sleep 2
    fi
    generate_colors
done