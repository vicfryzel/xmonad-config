#!/bin/sh
# Script to configure X, start common apps, and start xmonad.
# Author: Vic Fryzel
# http://github.com/vicfryzel/xmonad-config


# Configure PATH so that we can access our scripts below
PATH=$PATH:~/.cabal/bin:~/.xmonad/bin

# Configure X
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &
xscreensaver -no-splash &

# Start the system tray
tray &

# Start two terminals
urxvt &
urxvt &

# Start a browser
google-chrome &

# Start xchat (IRC client)
xchat &

pulseaudio --start &

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session xmonad
