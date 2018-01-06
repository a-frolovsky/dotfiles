#!/bin/bash
cd `dirname "$0"`

FILES=(
".gemrc"
".gitconfig"
".gitignore_global"
".zshrc"
".tmux.conf"
".fzf.zsh"
)

for file in "${FILES[@]}"; do
  if [ -f "$HOME/$file" ]; then
    mv -v $HOME/$file $HOME/$file.backup
  fi

  cp -v $PWD/$file $HOME/$file
done
