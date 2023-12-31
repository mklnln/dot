#!/bin/bash

# Check if the application is already running
if pgrep -x "anki" >/dev/null; then
    # If the application is running, bring it to the foreground
    wmctrl -xa "anki"
else
    # If the application is not running, start it
    flatpak run net.ankiweb.Anki &
fi
