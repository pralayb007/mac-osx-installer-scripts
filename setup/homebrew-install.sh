#!/usr/bin/env bash
source ../utilities/echo_utils.sh

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

brew update && brew cleanup

# Tapping into various brews
brew tap homebrew/cask-versions
brew tap homebrew/cask
brew tap homebrew/cask-fonts