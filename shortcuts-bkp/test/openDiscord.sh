#!/bin/bash

# Find the first running instance of "code"
# PID=$(pgrep -x "code")

if pgrep -f /snap/discord; then
    # If the application is running, bring it to the foreground
    wmctrl -xa Discord
else
    # If the application is not running, start it
    discord &
fi
