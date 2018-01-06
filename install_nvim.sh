#!/bin/bash
cd `dirname "$0"`

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

FILES=(
"init.vim"
"plugins.vim"
)

for file in "${FILES[@]}"; do
  if [ -f "$HOME/.config/nvim/$file" ]; then
    mv -v "$HOME/.config/nvim/$file" "$HOME/.config/nvim/$file.backup"
  fi

  cp -v "$PWD/nvim/$file" "$HOME/.config/nvim/$file"
done
