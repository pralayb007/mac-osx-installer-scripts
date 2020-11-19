#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

###################
# Core libraries  #
###################
# xquartz
echo_green "Installing xquartz (this big download can be slow)"
n=0
until [ $n -ge 20 ]; do
  brew cask install xquartz && break
  n=$($n+1)
  echo_red "... install failed, retry $n"
done