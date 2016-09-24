#!/bin/bash
#
# Anton Frolovsky (c) antonfrolovsky@gmail.com

# Title start / title end
TS="\n\033[1;34m"
TE="\033[0m"

echo -e "${TS}Install Homebrew & Homebrew cask${TE}"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

echo -e "${TS}Install Git${TE}"
brew install git

echo -e "${TS}Install zsh & oh-my-zs${TE}"
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "${TS}Install rbenv (Ruby environment)${TE}"
brew install rbenv

echo -e "${TS}Install nvm (Node Version Manager)${TE}"
brew install nvm

echo -e "${TS}Install iTerm2${TE}"
brew cask install iterm2

echo -e "${TS}Install Google Chrome${TE}"
brew cask install google-chrome

echo -e "${TS}Install 1Password${TE}"
brew cask install 1password

# Copy config files
echo -e "${TS}Copy config files${TE}"
FILES=(
"gitconfig"
"zshrc"
"gemrc"
)

for file in "${FILES[@]}"; do
  if [ -f "$HOME/.$file" ]; then
    mv $HOME/.$file $HOME/.$file.old
  fi

  cp -f $PWD/$file $HOME/.$file
done

echo -e "${TS}Done.${TE}"
