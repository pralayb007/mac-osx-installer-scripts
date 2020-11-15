#!/usr/bin/env bash
source ./utilities/echo_utils.sh

# Hook
hdiutil attach ~/Dropbox/Working_apps/Hook.dmg
ditto -rsrc /Volumes/Hook*.*/Hook.app /Applications/Hook.app

# Hookshot (window resizing manager)
echo_yellow "Installing Hookshot from dropbox"
hdiutil attach ~/Dropbox/Working_apps/Hookshot.dmg
ditto -rsrc /Volumes/Hookshot*.*/Hookshot.app /Applications/Hookshot.app

# Bartender
hdiutil attach ~/Dropbox/Working_apps/Bartender.dmg
ditto -rsrc /Volumes/Bartender*/Bartender*.app /Applications/Bartender.app

echo_red "Manually eject all DMGs on Finder and press any key to continue"
read -r varname