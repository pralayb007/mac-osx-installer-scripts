#!/usr/bin/env bash
source ../utilities/echo_utils.sh

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
