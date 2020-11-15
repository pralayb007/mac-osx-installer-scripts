#!/usr/bin/env bash
source ./utilities/echo_utils.sh

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