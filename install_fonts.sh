#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
  brew tap homebrew/cask-fonts
  brew cask install homebrew/cask-fonts/font-hack-nerd-font
fi
