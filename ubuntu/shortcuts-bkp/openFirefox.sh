#!/bin/bash

# Check if the application is already running
if pgrep -x "firefox-bin" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "firefox"

else
    # If the application is not running, start it
    firefox &
fi
