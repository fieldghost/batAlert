#!/usr/bin/env bash

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"

THRESHOLD="10" #Percentage
BAT_DIR=$(find /sys/class/power_supply/ -maxdepth 1 -name "BAT*" | head -n 1)

if [ -z "$BAT_DIR" ] || [ ! -d "$BAT_DIR" ]; then
    exit 0
fi

if [ ! -f "$BAT_DIR/capacity" ] || [ ! -f "$BAT_DIR/status" ]; then
    exit 0
fi

read -r BATTERY_LEVEL < "$BAT_DIR/capacity"
read -r BATTERY_STATUS < "$BAT_DIR/status"

if ! [[ "$BATTERY_LEVEL" =~ ^[0-9]+$ ]]; then
    exit 1
fi

if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ] && [ "$BATTERY_STATUS" = "Discharging" ]; then
    notify-send -u critical "BATTERY WARNING" "Battery level @ ${BATTERY_LEVEL}%"
fi