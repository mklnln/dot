#!/bin/bash

# Check if the application is already running
if pgrep -x "slack" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "slack"

else
    # If the application is not running, start it
    slack &
fi
