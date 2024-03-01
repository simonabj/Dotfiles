#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "picom"

# killall -q polybar
# polybar left &
# polybar right &
# polybar middle &
# polybar tray &
# polybar xwindow &

pkill xidlehook
