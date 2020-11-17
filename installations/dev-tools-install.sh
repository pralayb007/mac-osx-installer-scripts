#!/usr/bin/env bash
source ../utilities/echo_utils.sh

# git
echo_yellow "Installing git"
brew install git

echo_yellow "Setting name and email for git configurations"
git config --global user.name "Pralay Biswas"
git config --global user.email pralayb@amazon.com

echo_green "Done"