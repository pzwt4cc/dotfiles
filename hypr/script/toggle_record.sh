#!/bin/bash

PID_FILE="/tmp/gsr-record.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if kill -0 "$PID" 2>/dev/null; then
        kill -SIGINT "$PID"
        rm -f "$PID_FILE"
        notify-send -u low "GPU Recorder" "🔴 Запись остановлена и сохранена"
        exit 0
    else
        rm -f "$PID_FILE"
    fi
fi

notify-send -u low "GPU Recorder" "⏺️ Запись экрана началась..."

gpu-screen-recorder \
    -w DP-2 \
    -f 60 \
    -a "bluez_output.90_2A_DC_BA_BB_B3.1.monitor" \
    -a "alsa_input.usb-0c76_USB_PnP_Audio_Device-00.pro-input-0" \
    -c mp4 \
    -o "$HOME/Videos/record_$(date +%Y-%m-%d_%H-%M-%S).mp4" &

echo $! > "$PID_FILE"
