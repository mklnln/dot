#!/bin/bash


# Check if the application is already running
if ps ax | grep -v grep | grep "gnome-terminal"; then
    # If the application is running, bring it to the foreground
    wmctrl -a "Terminal"
else
    # If the application is not running, start it
    gnome-terminal
fi
