#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

# Repeat a char X times
printf_repeat() {
 str=$1
 len=$2
printf "$green"'%*s' "$len" | tr ' ' "$str"
printf "\n"
}

# Get hold of this working directory
export BASE_DIR=`pwd`

echo_green "Install starting. You may be asked for your password (for sudo)."
# Ask for sudo password upfront
sudo -v
printf_repeat "#" 50

########################################
#  Set sensible machine configurations #
########################################
echo_red "Setting up some default machine configurations"
sh $BASE_DIR/configurations/mac-defaults-configurations.sh
echo_green "Done setting machine configurations"
printf_repeat "#" 50

########################################
#  Require Xcode installation          #
########################################
echo_red "Beginning XCode installation"
sh $BASE_DIR/setup/xcode-install.sh
echo_green "Done with XCode installation"
printf_repeat "#" 50

#######################################
# Homebrew installation and tapping   #
#######################################
echo_red "Beginning Homebrew installation"
sh $BASE_DIR/setup/homebrew-install.sh
echo_green "Done with Homebrew setup"
printf_repeat "#" 50

#######################################
# GNU utils installation              #
#######################################
echo_red "Beginning GNU utilities installation"
sh $BASE_DIR/installations/gnu-utils-install.sh
echo_green "Done with GNU utilities installation"
printf_repeat "#" 50

#######################################
# iTerm installation and switching    #
#######################################
echo_red "Beginning iTerm installation"
sh $BASE_DIR/installations/iterm2-install.sh
echo_green "Done with iTerm installation"
printf_repeat "#" 50

#######################################
# Appstore login and commandline      #
#######################################
echo_red "Beginning Appstore CLI installation"
sh $BASE_DIR/setup/appstore-login.sh
echo_green "Done Appstore login and CLI setup"
printf_repeat "#" 50

#######################################
# XQuartz installation                #
#######################################
echo_red "Beginning XQuartz installation"
sh $BASE_DIR/installations/xquartz-install.sh
echo_green "Done XQuartz installation"
printf_repeat "#" 50

#######################################
# Commandline utilities               #
#######################################
echo_red "Beginning commandline utilities installation"
sh $BASE_DIR/installations/terminal-utils.sh
echo_green "Done with terminal utils installation"
printf_repeat "#" 50

#######################################
# Fonts installation                  #
#######################################
echo_red "Beginning font installation"
sh $BASE_DIR/installations/fonts-install.sh
echo_green "Done with fonts installation"
printf_repeat "#" 50

#######################################
# Python installation                 #
#######################################
echo_red "Beginning Python installation"
sh $BASE_DIR/installations/python-install.sh
echo_green "Done with Python installation"
printf_repeat "#" 50

#######################################
# Ruby installation                 #
#######################################
echo_red "Beginning Ruby installation"
sh $BASE_DIR/installations/ruby-install.sh
echo_green "Done with Ruby installation"
printf_repeat "#" 50

#######################################
# Media libs and players installation #
#######################################
echo_red "Beginning media libraries and utilities installation"
sh $BASE_DIR/installations/media-utils-install.sh
echo_green "Done with media libraries and utilities installation"
printf_repeat "#" 50

#######################################
# Mac utilities installation          #
#######################################
echo_red "Beginning media libraries and utilities installation"
sh $BASE_DIR/installations/mac-utils-install.sh
# Trigger the installations from dropbox
echo_yellow "Now starting with installations from Dropbox DMGs"
sh $BASE_DIR/dropbox/dropbox-mac-utils-install.sh
echo_green "Done with media libraries and utilities installation"
printf_repeat "#" 50

#######################################
# Compression utilities installation  #
#######################################
echo_red "Beginning compression utilities installation"
sh $BASE_DIR/installations/compression-utils-install.sh
echo_green "Done with compression utilities installation"
printf_repeat "#" 50

#######################################
# Browser installations               #
#######################################
echo_red "Beginning browser installations"
sh $BASE_DIR/installations/browsers-install.sh
echo_green "Done with browser installations"
printf_repeat "#" 50

#######################################
# Chrome extensions installation      #
#######################################
echo_red "Beginning chrome extensions installations"
sh $BASE_DIR/extensions/chrome-extensions-install.sh
echo_green "Done with chrome extensions installations"
printf_repeat "#" 50

#######################################
# Firefox extensions installation     #
#######################################
echo_red "Beginning Firefox extensions installations"
sh $BASE_DIR/extensions/firefox-extensions-install.sh
echo_green "Done with Firefox extensions installations"
printf_repeat "#" 50

#######################################
# IDE and code editor installations   #
#######################################
echo_red "Beginning IDE installations"
sh $BASE_DIR/installations/code-editors-install.sh
echo_green "Done with IDE and code editor installations"
printf_repeat "#" 50

#######################################
# Mac dev tools installations         #
#######################################
echo_red "Beginning Mac dev tools installations"
sh $BASE_DIR/installations/dev-tools-install.sh
echo_yellow "Now starting with installations from Dropbox DMGs"
sh $BASE_DIR/dropbox/dropbox-dev-tools-install.sh
echo_green "Done with Mac dev tools installations"
printf_repeat "#" 50

#######################################
# Mac automation tools                #
#######################################
echo_red "Beginning with Alfred and Keyboard Maestro installations"
sh $BASE_DIR/installations/automation-utils-install.sh
echo_green "Done with Mac automation utilities installations"
printf_repeat "#" 50

#######################################
# Mac diagramming tools               #
#######################################
echo_red "Beginning with Mac diagramming software installations"
sh $BASE_DIR/installations/diagram-utils-install.sh
echo_green "Done with Mac diagramming software installations"
printf_repeat "#" 50

#######################################
# Mac task management tools           #
#######################################
echo_red "Beginning Mac task management software installations"
sh $BASE_DIR/installations/task-managers-install.sh
echo_yellow "Now starting with installations from Dropbox DMGs"
sh $BASE_DIR/dropbox/dropbox-task-managers-install.sh
echo_green "Done with Mac task management software installations"
printf_repeat "#" 50

#######################################
# Mac note takers and archivers       #
#######################################
echo_red "Beginning Mac note takers and archiver installations"
sh $BASE_DIR/installations/note-takers-archiver-install.sh
echo_yellow "Now starting with installations from Dropbox DMGs"
sh $BASE_DIR/dropbox/dropbox-note-takers-archiver-install.sh
echo_green "Done with Mac note takers and archiver installations"
printf_repeat "#" 50

#######################################
# Clean up and exit                   #
#######################################
echo_green "All done...cleaning up"
brew cleanup
unset BASE_DIR
echo_green "Press any key to exit"
read -r varname
exit