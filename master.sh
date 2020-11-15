#!/usr/bin/env bash
source ./utilities/echo_utils.sh

echo_green "Install starting. You may be asked for your password (for sudo)."

#######################################
# Require Xcode installation          #
#######################################
echo_yellow "Beginning XCode installation"
sh ./setup/xcode-install.sh