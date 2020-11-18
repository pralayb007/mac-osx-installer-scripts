#!/usr/bin/env bash
source ./utilities/echo_utils.sh
source ./utilities/printf_utils.sh

echo_green "Install starting. You may be asked for your password (for sudo)."
# Ask for sudo password upfront
sudo -v
printf_new "#" 50

########################################
#  Set sensible machine configurations #
########################################
echo_red "Setting up some default machine configurations"
sh ./configurations/mac-defaults-configurations.sh
echo_green "Done setting machine configurations"
printf_new "#" 50

########################################
#  Require Xcode installation          #
########################################
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
# iTerm installation and switching    #
#######################################
echo_red "Beginning iTerm installation"
sh ./installations/iterm2-install.sh
echo_green "Done with iTerm installation"
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
# Commandline utilities               #
#######################################
echo_red "Beginning commandline utilities installation"
sh ./installations/terminal-utils.sh
echo_green "Done with terminal utils installation"
printf_new "#" 50

#######################################
# Fonts installation                  #
#######################################
echo_red "Beginning font installation"
sh ./installations/fonts-install.sh
echo_green "Done with fonts installation"
printf_new "#" 50

#######################################
# Python installation                 #
#######################################
echo_red "Beginning Python installation"
sh ./installations/python-install.sh
echo_green "Done with Python installation"
printf_new "#" 50

#######################################
# Ruby installation                 #
#######################################
echo_red "Beginning Ruby installation"
sh ./installations/ruby-install.sh
echo_green "Done with Ruby installation"
printf_new "#" 50

#######################################
# GNU utils installation              #
#######################################
echo_red "Beginning GNU utilities installation"
sh ./installations/gnu-utils-install.sh
echo_green "Done with GNU utilities installation"
printf_new "#" 50

#######################################
# Media libs and players installation #
#######################################
echo_red "Beginning media libraries and utilities installation"
sh ./installations/media-utils-install.sh
echo_green "Done with media libraries and utilities installation"
printf_new "#" 50

#######################################
# Mac utilities installation          #
#######################################
echo_red "Beginning media libraries and utilities installation"
sh ./installations/mac-utils-install.sh
# Trigger the installations from dropbox
echo_yellow "Now starting with installations from Dropbox DMGs"
sh ./dropbox/dropbox-mac-utils-install.sh
echo_green "Done with media libraries and utilities installation"
printf_new "#" 50

#######################################
# Compression utilities installation  #
#######################################
echo_red "Beginning compression utilities installation"
sh ./installations/compression-utils-install.sh
echo_green "Done with compression utilities installation"
printf_new "#" 50

#######################################
# Browser installations               #
#######################################
echo_red "Beginning browser installations"
sh ./installations/browsers-install.sh
echo_green "Done with browser installations"
printf_new "#" 50

#######################################
# Chrome extensions installation      #
#######################################
echo_red "Beginning chrome extensions installations"
sh ./extensions/chrome-extensions-install.sh
echo_green "Done with chrome extensions installations"
printf_new "#" 50

#######################################
# IDE and code editor installations   #
#######################################
echo_red "Beginning IDE installations"
sh ./installations/code-editors-install.sh
echo_green "Done with IDE and code editor installations"
printf_new "#" 50

#######################################
# Mac dev tools installations         #
#######################################
echo_red "Beginning Mac dev tools installations"
sh ./installations/dev-tools-install.sh
echo_yellow "Now starting with installations from Dropbox DMGs"
sh ./dropbox/dropbox-dev-tools-install.sh
echo_green "Done with Mac dev tools installations"
printf_new "#" 50

#######################################
# Mac automation tools                #
#######################################
echo_red "Beginning with Alfred and Keyboard Maestro installations"
sh ./installations/automation-utils-install.sh
echo_green "Done with Mac automation utilities installations"
printf_new "#" 50

#######################################
# Mac diagramming tools               #
#######################################
echo_red "Beginning with Mac diagramming software installations"
sh ./installations/diagram-utils-install.sh
echo_green "Done with Mac diagramming software installations"
printf_new "#" 50

#######################################
# Mac task management tools           #
#######################################
echo_red "Beginning Mac task management software installations"
sh ./installations/task-managers-install.sh
echo_yellow "Now starting with installations from Dropbox DMGs"
sh ./dropbox/dropbox-task-managers-install.sh
echo_green "Done with Mac task management software installations"
printf_new "#" 50

#######################################
# Mac note takers and archivers       #
#######################################
echo_red "Beginning Mac note takers and archiver installations"
sh ./installations/note-takers-archiver-install.sh
echo_yellow "Now starting with installations from Dropbox DMGs"
sh ./dropbox/dropbox-note-takers-archiver-install.sh
echo_green "Done with Mac note takers and archiver installations"
printf_new "#" 50

#######################################
# Clean up and exit                   #
#######################################
echo_green "All done...cleaning up"
brew cleanup
echo_green "Press any key to exit"
read -r varname
exit