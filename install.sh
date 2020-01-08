#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! "$(command -v brew)"; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

##ensure we are using zsh by default and install all zsh-related dependencies
chsh -s "$(command -v zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle install --file=files/Brewfile

# Install global Python dependencies
pip3 install -r files/requirements.txt

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/files/.zshrc" "$HOME/.zshrc"

# Symlink the Mackup config file to the home directory
ln -s "$HOME/.dotfiles/files/.mackup.cfg" "$HOME/.mackup.cfg"

#Symlink the terminal colors files so we can install it when configuring mac OS
ln -s "$HOME/.dotfiles/files/Ubuntu.itermcolors" "$HOME/Ubuntu.itermcolors"

#Download useful fonts
for f in "Bold" "Light" "Medium" "Regular" "Retina";
  do wget -N -q -P $HOME/Library/Fonts/ https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-$f.ttf;
done;

# Install Barracuda VPN
wget -q -O /tmp/VPNClient.pkg https://www.jolera.com/files/VPNClient_5.0.2.7_OSX.pkg
sudo installer -pkg /tmp/VPNClient.pkg -target /
rm /tmp/VPNClient.pkg

# Install VSCode plugins
plugin_list=""
while IFS= read -r e; do
  plugin_list="${plugin_list} --install-extension ${e}"
done <<< "$(<files/vscode-extensions.txt)"
sh -c "code $plugin_list"

# Set macOS preferences
# We will run this last because this will reload the shell
. files/.macos
