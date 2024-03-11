#!/bin/bash

# Find the first running instance of "code"
# PID=$(pgrep -x "code")

if pgrep -x "code" > /dev/null
then
    # If the application is running, bring it to the foreground
    wmctrl -xa code
else
    # If the application is not running, start it
    code &
fi