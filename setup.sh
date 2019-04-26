#!/usr/bin/env bash

############################
# setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# It also backs up the files it replaces into ~/dotfiles/old
############################

########## Variables

# get scrip
DIR="$( cd "$( dirname "$0" )" && pwd )"
SRC="$DIR"/src
OLD="$DIR"/old
LEN="$((${#SRC} + 2))"
CONFIG_DIR="$DIR"/config
CONFIG_LEN="$((${#CONFIG_DIR} + 2))"
##########

# remove old ~/dotfiles_old
rm -rf "$HOME"/dotfiles_old

# create dotfiles_old in homedir
echo "Creating $OLD for backup of any existing dotfiles in ~"
mkdir -p "$OLD"

# move any existing dotfiles in homedir to dotfiles/old directory, then create symlinks to dotfiles/src
for FILE in "$SRC"/*; do
  BASE="$(echo "$FILE" | cut -c "$LEN"-)"

  if ([ -f ~/."$BASE" ] || [ -d ~/."$BASE" ]) && ([ ! -f "$OLD/$BASE" ] && [ ! -d "$OLD/$BASE" ]) ; then
    echo "Moving ~/.$BASE to $OLD"
    cp -LR ~/."$BASE" "$OLD/$BASE"
  fi

  echo "Creating symlink to $FILE in home directory"
  rm -rf ~/."$BASE" && ln -s "$SRC/$BASE" ~/."$BASE"
done

# move any existing files in ~/config to dotfiles/old/config then create symlinks
mkdir -p ~/.config
mkdir -p "$OLD"/config
for FILE in "$DIR"/config/*; do
  BASE="$(echo "$FILE" | cut -c "$CONFIG_LEN"-)"

  if ([ -f ~/.config/"$BASE" ] || [ -d ~/.config/"$BASE" ]) && ([ ! -f "$OLD"/config/"$BASE" ] && [ ! -d "$OLD"/config/"$BASE" ]); then
    echo "Moving ~/.config/$BASE to $OLD"
    cp -LR ~/.config/"$BASE" "$OLD"/config/
  fi

  echo "Creating symlink to $FILE in ~/.config directory"
  rm -rf ~/.config/"$BASE" && ln -s "$FILE" ~/.config/"$BASE"
done

"$DIR"/config_vim.sh
"$DIR"/install_fonts.sh
"$DIR"/install_kitty.sh
