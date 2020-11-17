#!/usr/bin/env bash
source ../utilities/echo_utils.sh

###################
# App store login #
###################
echo_green "Installing mas - the mac app store command-line interface"
echo_yellow "More info on : https://github.com/mas-cli/mas"
brew install mas
echo_green "Done installing mas"
echo_red "Sign into app store and then come back and press any key to proceed"
read -r varname