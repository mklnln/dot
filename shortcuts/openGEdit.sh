#!/bin/bash

# Check if the application is already running
if pgrep -x "sublime_text" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "sublime_text"
else
    # If the application is not running, start it
    subl &
fi
