#!/bin/bash

# 1. Define your variables
TARGET_SSID="beadshop"
APP_TO_LAUNCH="betterbird"

# Automatically find the active Wi-Fi interface
WIFI_INT=$(iw dev | awk '$1=="Interface" {print $2; exit}')

# 2. Get the current connected SSID using 'iw'
CURRENT_SSID=$(iw dev "$WIFI_INT" link | grep -i "SSID:" | awk '{print $2}')

# Convert to lowercase for a case-insensitive partial match
CURRENT_SSID_LOWER=$(echo "$CURRENT_SSID" | tr '[:upper:]' '[:lower:]')
TARGET_SSID_LOWER=$(echo "$TARGET_SSID" | tr '[:upper:]' '[:lower:]')

# 3. Check if current SSID contains the target SSID
if [[ "$CURRENT_SSID_LOWER" == *"$TARGET_SSID_LOWER"* ]]; then
    echo "Connected to an SSID containing '$TARGET_SSID' ($CURRENT_SSID). Doing nothing."
else
    echo "Not connected to '$TARGET_SSID' (Current: ${CURRENT_SSID:-None}). Launching $APP_TO_LAUNCH..."
    $APP_TO_LAUNCH & 
fi
