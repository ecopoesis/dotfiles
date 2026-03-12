# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles repo for macOS. `setup.sh` is the main entry point — it symlinks everything from `src/` into `~/` (prefixed with `.`) and everything from `config/` into `~/.config/`, backing up existing files to `old/`.

## Setup

```bash
./setup.sh        # Full install: oh-my-zsh, symlinks, vim plugins, fonts, ghostty
./config_vim.sh   # Just vim plugins (PlugInstall + PlugUpdate)
./install_vms.sh  # Version managers (homebrew, jenv, rvm, pyenv, nvm, pgvm)
```

## Architecture

### Symlink mapping
- `src/*` → `~/.{filename}` (e.g. `src/zshrc` → `~/.zshrc`, `src/gitconfig` → `~/.gitconfig`)
- `config/*` → `~/.config/{name}` (e.g. `config/ghostty/` → `~/.config/ghostty/`)

### Zsh structure
- `src/zshrc` — entrypoint, sets `ZSH_CUSTOM=$HOME/.zsh`, loads oh-my-zsh with theme "miker"
- `src/zsh/path.zsh` — loaded first, defines `pathadd()` helper used throughout
- `src/zsh/profile.zsh` — env vars, history config, JVM opts, ulimits
- `src/zsh/alias.zsh` — shell aliases
- `src/zsh/function.zsh` — utility functions (`hist`, `f`, `copy`, `extract`)
- `src/zsh/version_managers.zsh` — lazy-loads pgvm, rvm, jenv, nvm, poetry, direnv, pyenv
- `src/zsh/themes/miker.zsh-theme` — custom prompt with powerline segments showing user@host, git status, and active version managers (pyenv/nvm/rvm/jenv/tfenv/aws)
- `src/zsh/plugins/dir_chomp_tab/` — custom plugin that shortens directory paths for tab completion
- `src/zsh/plugins/zsh-tfenv/` — auto-installs and loads tfenv
- `src/zsh/plugins/gradle-completion/` — gradle tab completion

### Git config
- `src/gitconfig` — main config with extensive aliases (see `[alias]` section), GPG signing enabled, IntelliJ as merge/diff tool
- `src/gitignore_global` — global gitignore
- `gitconfig.cargurus` — conditional include for CarGurus repos (matched by remote URL)
- Notable aliases: `trunk` (detects main vs master), `com` (checkout trunk), `mom`/`rom` (merge/rebase origin trunk), `recent` (formatted branch list), `comp` (push and open GitHub compare), `jira` (create feature branch with JIRA ticket)

### Terminal emulators
- `config/ghostty/config` — current terminal (Ghostty), Dracula+ theme, Hack Nerd Font 14pt
- `config/kitty/kitty.conf` — previous terminal (kitty), kept for reference

### Other configs
- `src/tmux.conf` — tmux with screen-style `C-a` prefix, mouse mode, 256color
- `src/vimrc` — vim-plug with NERDTree, airline, gitgutter, undotree; darcula colorscheme; 4-space tabs
