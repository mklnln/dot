#!/bin/bash


# Check if the application is already running
if pgrep -x "obsidian" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "obsidian"

else
    # If the application is not running, start it
    obsidian &
fi
