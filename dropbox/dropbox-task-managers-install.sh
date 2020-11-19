#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

# OmniFocus
echo_yellow "Installing Omnifocus from dropbox"
hdiutil attach ~/Dropbox/Working_apps/OmniFocus.dmg
ditto -rsrc /Volumes/OmniFocus*/OmniFocus*.app /Applications/OmniFocus.app
hdiutil unmount /Volumes/OmniFo*
echo_red "Manually unmount DMGs on Finder and click any key to continue"
read varname
