the#!/bin/bash



# Check if the application is already running
if pgrep -x "chrome" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "google-chrome"
    # Wait for the application to pop up, hit refresh
    sleep 0.2
    xdotool key F5
else
    # If the application is not running, start it
    google-chrome &
fi
