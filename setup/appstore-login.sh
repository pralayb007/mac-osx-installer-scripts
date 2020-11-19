#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

###################
# App store login #
###################
echo_green "Installing mas - the mac app store command-line interface"
echo_yellow "More info on : https://github.com/mas-cli/mas"
brew install mas
echo_green "Done installing mas"
echo_red "Sign into app store and then come back and press any key to proceed"
read -r varname