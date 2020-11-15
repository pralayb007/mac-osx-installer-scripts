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

#######################################
# Appstore login and commandline      #
#######################################
echo_red "Beginning Appstore CLI installation"
sh ./setup/appstore-login.sh
echo_green "Done Appstore login and CLI setup"
printf_new "#" 50

#######################################
# XQuartz installation                #
#######################################
echo_red "Beginning XQuartz installation"
sh ./installations/xquartz-install.sh
echo_green "Done XQuartz installation"
printf_new "#" 50

#######################################
# Fonts installation                  #
#######################################
echo_red "Beginning font installation"
sh ./installations/fonts-install.sh
echo_green "Done with fonts installation"
printf_new "#" 50