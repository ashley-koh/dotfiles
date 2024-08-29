#!/usr/bin/env bash

# Create Symlinks
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
