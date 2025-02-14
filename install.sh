#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install python2 as it's needed for yarn
pyenv install 2.7.18
pyenv global 2.7.18

# Create a Development directory
mkdir $HOME/Development

# Create a Screenshots directory
mkdir $HOME/Documents/Screenshots

# Create Development subdirectories
mkdir $HOME/Development/BroadleafCommerce
mkdir $HOME/Development/Personal

# Clone Github repositories
./clone.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
source .macos

# Set up colima stuff
colima start --cpu 4 --memory 16 --disk 60 --arch aarch64
colima start --cpu 4 --memory 16 --disk 60 --arch x86_64 --profile x86
docker context use colima