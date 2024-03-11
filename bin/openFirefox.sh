#!/bin/bash

# Check if the application is already running
if wmctrl -l | grep "Mozilla Firefox" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "Firefox"

else
    # If the application is not running, start it
    firefox &
fi
