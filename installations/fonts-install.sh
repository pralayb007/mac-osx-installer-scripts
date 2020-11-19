#!/usr/bin/env bash

# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'
function echo_green { echo "$green""$1""$color_off"; }
function echo_yellow { echo "$yellow""$1""$color_off"; }
function echo_red  { echo "$red""$1""$color_off"; }

###################
# Fonts           #
###################
echo_yellow "Installing cask fonts..."

brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-fira-sans
brew cask install font-anonymous-pro
brew cask install font-fira-sans
brew cask install font-hack-nerd-font
brew cask install font-anonymous-pro
brew cask install font-inconsolata
brew cask install font-source-code-pro
brew cask install font-ia-writer-mono
brew cask install font-ia-writer-duo
brew cask install font-ia-writer-quattro
brew cask install font-iosevka

echo_yellow "Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo_yellow "Done"

echo_yellow "Installing Iosevka fonts"
mkdir fonts
cd fonts
wget https://github.com/be5invis/Iosevka/releases/download/v4.0.0-beta.1/ttf-iosevka-term-4.0.0-beta.1.zip
wget https://github.com/be5invis/Iosevka/releases/download/v4.0.0-beta.1/ttf-iosevka-fixed-4.0.0-beta.1.zip
unzip \*.zip
echo_yellow "Moving fonts to font directory"
mv *.ttf ~/Library/Fonts
cd ..
echo_yellow "Removing temporary font library"
rm -rf fonts
echo_yellow "Done"
