#!/usr/bin/env bash
source ../utilities/echo_utils.sh
source ../utilities/lib_install_check_utils.sh

echo_yellow "Installing zsh"
brew install zsh
brew upgrade zsh
echo_green "Done installing zsh"

echo_yellow "Installing iTerm2"
brew cask install iterm2
brew upgrade --cask iterm2
echo_green "Done installing iterm2"

# Install oh-my-zsh
sudo rm -rf ~/.oh-my-zsh/
unset ZSH
echo_yellow "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo_green "Done installing oh-my-zsh"

# Install git
echo_yellow "Installing git"
brew install git
brew upgrade git
echo_green "Done installing git"

# Install powerline fonts
echo_yellow "Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo_green "Done installing fonts"

# Install the cobalt theme
echo_yellow "Installing cobalt theme"
git clone https://github.com/wesbos/Cobalt2-iterm.git
cp Cobalt2-iterm/cobalt2.zsh-theme ~/.oh-my-zsh/themes/
# replace the default theme with this one
sed -ie "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"cobalt2\"/g" ~/.zshrc
# Fire iTerm
open -a iTerm

echo_red "Manually update oh-my-zsh on the open iterm window by typing \`omz update\`"
echo_yellow "Press any key to continue"
read -r varname
