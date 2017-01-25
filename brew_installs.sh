#!/bin/bash
cd `dirname "$0"`

brew tap caskroom/cask
brew install \
curl \
wget \
git \
nvm \
rbenv \
zsh \
tmux \
neovim
