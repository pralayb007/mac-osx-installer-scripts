#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

# DevonThink
echo_yellow "Installing DevonThink from Dropbox"
unzip ~/Dropbox/Working_apps/DevonThink.zip
mv 'DEVONthink 3.app/' /Applications
echo_green "Done"