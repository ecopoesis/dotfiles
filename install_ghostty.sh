#!/usr/bin/env bash

if [[ "$(uname)" != "Darwin" ]]; then
  echo "Skipping Ghostty install: macOS only"
  exit 0
fi

brew install --cask ghostty
