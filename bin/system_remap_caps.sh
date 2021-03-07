#!/bin/sh

# This script replaces the caps-lock with an additional ctrl.
# The change is persistent after reboot and acts at system level.

# A better solution would be to use setxkbmap and put the 
#  following in .xprofile, but that doesn't seem to work atm
#  $ xset -q | grep "Caps Lock:\s*on" && xdotool key Caps_Lock
#  $ setxkbmap -option caps:ctrl_modifier

option=XKBOPTIONS=\"caps:ctrl_modifier\"
sys_keyboard_file=/etc/default/keyboard

if ! grep -q $option $sys_keyboard_file; then
	echo "Adding $option to $sys_keyboard_file"
	echo $option >> $sys_keyboard_file
fi
