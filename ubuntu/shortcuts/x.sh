#!/bin/bash

if pgrep -x "firefox" >/dev/null; then
    gio launch org.mozilla.firefox.desktop
else
    firefox &
fi
