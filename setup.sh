#!/usr/bin/env bash

############################
# setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# It also backs up the files it replaces into ~/dotfiles/old
############################

########## Variables

# get script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"
OLD="$DIR"/old
LEN="$(expr ${#DIR} + 2)"
CONFIG_DIR="$DIR"/config
CONFIG_LEN="$(expr ${#CONFIG_DIR} + 2)"
##########

# remove old ~/dotfiles_old
rm -rf "$HOME"/dotfiles_old

# create dotfiles_old in homedir
echo "Creating $OLD for backup of any existing dotfiles in ~"
mkdir -p "$OLD"

# move any existing dotfiles in homedir to dotfiles/old directory, then create symlinks
for FILE in "$DIR"/*; do
    # skip *.sh files and README.md
    if [[ ! "$FILE" == *.sh ]] && [[ ! "$FILE" == *README.md ]] && [[ ! "$FILE" == "$OLD" ]] && [[ ! "$FILE" == *config ]]; then
        BASE="$(echo "$FILE" | cut -c "$LEN"-)"

        if [ -f ~/."$BASE" ] || [ -d ~/."$BASE" ]; then
          echo "Moving ~/.$BASE to $OLD"
          cp -LR ~/."$BASE" "$OLD/$BASE"
        fi

        echo "Creating symlink to $FILE in home directory"
        rm -rf ~/."$BASE" && ln -s "$FILE" ~/."$BASE"
    fi
done

mkdir -p ~/.config
mkdir -p "$OLD"/config
for FILE in "$DIR"/config/*; do
    BASE="$(echo "$FILE" | cut -c "$CONFIG_LEN"-)"
    echo ~/.config/"$BASE"

    if [ -f ~/.config/"$BASE" ] || [ -d ~/.config/"$BASE" ]; then
        echo "Moving ~/.config/$BASE to $OLD"
        cp -LR ~/.config/"$BASE" "$OLD"/config/
    fi

    echo "Creating symlink to $FILE in ~/.config directory"
    rm -rf ~/.config/"$BASE" && ln -s "$FILE" ~/.config/"$BASE"
done

if [[ "$(uname)" == 'Darwin' ]]; then
  # MacOS
  FONT_DIR="$HOME/Library/Fonts"
else
  # Linux
  FONT_DIR="$HOME/.local/share/fonts"
  mkdir -p "$FONT_DIR"
fi

echo "Copying fonts..."
cp "$DIR"/fonts/* "$FONT_DIR"

