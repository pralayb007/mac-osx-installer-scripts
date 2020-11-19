#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

# git
echo_yellow "Installing git"
brew install git

echo_yellow "Setting name and email for git configurations"
git config --global user.name "Pralay Biswas"
git config --global user.email pralayb@amazon.com

echo_green "Done"