#!/usr/bin/env bash
source ../utilities/echo_utils.sh

# Mac utilities
brew cask install dropbox
echo_green "Dropbox done"
echo_red "Log into Dropbox and press any key to continue"
read -r varname

brew cask install flux
echo_green "Flux done"

brew cask install slack
echo_green "Slack done"

brew cask install quitter
echo_green "Quitter done"

brew cask install itsycal
echo_green "Itsycal done"

brew cask install lastpass
echo_green "LastPass done"
echo_red "Log into Lastpass and press any key to continue"

brew cask install cleanmymac
echo_green "CleanMyMac done"

brew cask install appdelete
echo_green "AppDelete done"

brew cask install expressvpn
echo_green "ExpressVPN done"

echo_yellow "Installing amphetamine from appstore"
mas lucky amphetamine # from app store
echo_green "Amphetamine done"
