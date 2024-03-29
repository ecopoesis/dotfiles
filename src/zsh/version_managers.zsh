# load various version managers

# load PGVM
if [ -d "$HOME/.pgvm" ] ; then
  source "$HOME"/.pgvm/pgvm_env
fi

# load RVM
if [ -d "$HOME/.rvm" ] ; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

# load jenv
if exists jenv ; then
  eval "$(jenv init -)"
fi

# load NVM
if [ -d "$HOME/.nvm" ] ; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

# load poetry
if [ -d "$HOME/.poetry" ] ; then
  source $HOME/.poetry/env
fi

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# load direnv
if exists direnv ; then
  eval "$(direnv hook bash)"
fi

# load pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
fi 

if [ -e /usr/local/bin/pyenv ]; then
    eval "$(pyenv init --path)"
fi
