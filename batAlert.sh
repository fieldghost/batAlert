#!/bin/bash

export DISPLAY=:0
DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
export DBUS_SESSION_BUS_ADDRESS

BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
BATTERY_STATUS=$(cat /sys/class/power_supply/BAT0/status)
THRESHOLD="10"

if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ] && [ "$BATTERY_STATUS" = "Discharging" ]; then
    notify-send -u critical "BATTERY WARNING" "Battery level @ $BATTERY_LEVEL%"
fi
