#!/usr/bin/env bash
source ../utilities/echo_utils.sh

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
