#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
  brew tap caskroom/fonts
  brew cask install font-hack-nerd-font
fi
