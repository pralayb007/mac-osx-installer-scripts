#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

# Hook
hdiutil attach ~/Dropbox/Working_apps/Hook.dmg
ditto -rsrc /Volumes/Hook*.*/Hook.app /Applications/Hook.app
hdiutil unmount /Volumes/*productivity*.*

# Hookshot (window resizing manager)
echo_yellow "Installing Hookshot from dropbox"
hdiutil attach ~/Dropbox/Working_apps/Hookshot.dmg
ditto -rsrc /Volumes/Hookshot*.*/Hookshot.app /Applications/Hookshot.app
hdiutil unmount /Volumes/Hookshot*

# Bartender
hdiutil attach ~/Dropbox/Working_apps/Bartender.dmg
ditto -rsrc /Volumes/Bartender*/Bartender*.app /Applications/Bartender.app
hdiutil unmount /Volumes/Bartender*.*

echo_red "Manually eject all DMGs on Finder and press any key to continue"
read -r varname