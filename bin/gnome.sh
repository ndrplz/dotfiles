#!/bin/bash

nightlight(){
	gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled "$1"
}

