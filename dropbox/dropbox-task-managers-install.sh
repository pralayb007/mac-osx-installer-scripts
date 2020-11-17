#!/usr/bin/env bash
source ../utilities/echo_utils.sh

# OmniFocus
echo_yellow "Installing Omnifocus from dropbox"
hdiutil attach ~/Dropbox/Working_apps/OmniFocus.dmg
ditto -rsrc /Volumes/OmniFocus*/OmniFocus*.app /Applications/OmniFocus.app
hdiutil unmount /Volumes/OmniFo*
echo_red "Manually unmount DMGs on Finder and click any key to continue"
read varname
