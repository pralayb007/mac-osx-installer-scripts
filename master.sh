#!/usr/bin/env bash
source ./utilities/echo_utils.sh
source ./utilities/printf_utils.sh

echo_green "Install starting. You may be asked for your password (for sudo)."
printf_new "#" 50
#######################################
# Require Xcode installation          #
#######################################
echo_red "Beginning XCode installation"
sh ./setup/xcode-install.sh
echo_green "Done with XCode installation"
printf_new "#" 50

#######################################
# Homebrew installation and tapping   #
#######################################
echo_red "Beginning Homebrew installation"
sh ./setup/homebrew-install.sh
echo_green "Done with Homebrew setup"
printf_new "#" 50