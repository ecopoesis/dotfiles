# load various version managers

# load PGVM
if [ -d "$HOME/.pgvm" ] ; then
  source "$HOME"/.pgvm/pgvm_env
fi

# load RVM
if [ -d "$HOME/.rvm" ] ; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

# load NVM
if [ -d "$HOME/.nvm" ] ; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

# load direnv
if exists direnv ; then
  eval "$(direnv hook bash)"
fi
