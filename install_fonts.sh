#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
  brew tap homebrew/cask-fonts
  brew install --cask homebrew/cask-fonts/font-hack-nerd-font
fi
