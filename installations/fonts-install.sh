#!/usr/bin/env bash
source ./utilities/echo_utils.sh

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
