#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

#######################################
# Homebrew installation and tapping   #
#######################################
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
if hash brew &> /dev/null; then
  echo_green "Homebrew already installed"
else
    echo_yellow "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Remove outdated versions from the cellar.
brew cleanup

# Upgrade any already-installed formulae.
brew upgrade

# Tapping into various brews
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts