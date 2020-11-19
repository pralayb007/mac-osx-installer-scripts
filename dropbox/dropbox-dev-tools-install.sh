#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

# Tower
echo_yellow "Installing Tower from Dropbox"
hdiutil attach ~/Dropbox/Working_apps/Tower.dmg
ditto -rsrc /Volumes/Tower*/Tower*.app /Applications/Tower.app
hdiutil unmount /Volumes/Tower*.*

# Dash
echo_yellow "Installing Dash from Dropbox"
hdiutil attach ~/Dropbox/Working_apps/Dash.dmg
ditto -rsrc /Volumes/Dash*/Dash*.app /Applications/Dash.app
hdiutil unmount /Volumes/Dash*.*

# Kaleidoscope
echo_yellow "Installing Kaleidoscope from Dropbox"
hdiutil attach ~/Dropbox/Working_apps/Kaleidoscope.dmg
ditto -rsrc /Volumes/Kaleidoscope*.*/Kaleidoscope.app /Applications/Kaleidoscope.app
hdiutil unmount /Volumes/Kaleidoscope*.*

#OmniPlan
echo_yellow "Installing OmniPlan from Dropbox"
hdiutil attach ~/Dropbox/Working_apps/OmniPlan.dmg
ditto -rsrc /Volumes/OmniPlan*/OmniPlan*.app /Applications/OmniPlan.app
hdiutil unmount /Volumes/OmniPlan*

echo_green "Done"
