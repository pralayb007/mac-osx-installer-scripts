#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

echo_yellow "Setting up some sensible machine configurations"

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable "natural" scroll
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo_green "Done"