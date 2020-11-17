#!/usr/bin/env bash
source ../utilities/echo_utils.sh

# DevonThink
echo_yellow "Installing DevonThink from Dropbox"
unzip ~/Dropbox/Working_apps/DevonThink.zip
mv 'DEVONthink 3.app/' /Applications
echo_green "Done"