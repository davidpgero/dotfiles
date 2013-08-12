#!/bin/sh

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "Found symlink. Deleting..."
      rm $target
    fi
  fi
done

vundle="$HOME/.vim/bundle/vundle"
if [ -e "$vundle" ]; then
  if [ ! -L "$vundle" ]; then
    echo "Found vundle... Deleteing"
    rm -r $vundle
  fi
fi

echo "Deleted Throughtbot dotfiles"
