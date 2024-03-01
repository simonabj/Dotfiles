#!/bin/sh

fl="$HOME/.config/kglobalshortcutsrc"

sed -i 's/=.*,.*,/=none,none,/g' $fl
sed -i 's/Walk Through Windows=.*/Walk Through Windows=Alt+Tab,Alt+Tab,Walk Through Windows/' $fl # return alt+tab

# Reload hotkeys.
