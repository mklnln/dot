#! /bin/bash

gnome-terminal -- termdown $(($1 * 60)) && sleep 0.5 && wmctrl -r :ACTIVE: -b add,fullscreen


