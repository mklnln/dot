#!/bin/bash
# Check if the application is already running
if pgrep -x "chrome" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "google-chrome"
else
    # If the application is not running, start it
    google-chrome &
fi