#! /bin/bash

gnome-terminal -- termdown $((3 * 60)) && sleep 0.5 && wmctrl -r :ACTIVE: -b add,fullscreen


