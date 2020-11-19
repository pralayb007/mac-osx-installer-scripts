#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

#######################################
# Require Xcode installation          #
#######################################
echo_yellow "Log into App Store using your appleId and install XCode"
echo_yellow "Press any key once done"
read -r varname

if xcode-select -p | grep -q 'CommandLineTools\|Xcode.app'; then
  echo_green "XCode was installed"
else
  echo_red "XCode was not installed"
fi
