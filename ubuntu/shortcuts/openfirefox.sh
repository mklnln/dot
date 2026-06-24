#!/bin/bash

if pgrep -x "firefox" >/dev/null; then
    gio launch /usr/share/applications/org.mozilla.firefox.desktop
else
    firefox &
fi
