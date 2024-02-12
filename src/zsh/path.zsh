## set paths

typeset -U path

# add a directory to the path if it isn't there already, and the directory exists
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        path+=("$1")
    fi
}

pathadd /bin
pathadd /sbin
pathadd /usr/bin
pathadd /usr/sbin
pathadd /usr/local/bin
pathadd /usr/local/sbin
pathadd "$HOME"/bin
pathadd /usr/local/mysql/bin
pathadd ~/tools/scala/bin
pathadd ~/tools/sbt/bin
pathadd ~/tools/activator
pathadd ~/tools/android-sdk-macosx/platform-tools
pathadd ~/bin
pathadd /usr/local/heroku/bin
pathadd "$HOME"/.nvm
pathadd "$HOME"/code/potpourri/bin
pathadd /Applications/IntelliJ\ IDEA.app/Contents/MacOS
pathadd /anaconda2/bin
pathadd /anaconda3/bin
pathadd "$HOME"/.jenv/bin
pathadd "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
pathadd "$HOME"/.rvm/bin
pathadd "$HOME"/.pyenv/bin
pathadd /opt/homebrew/bin

# rust
pathadd "$HOME"/.cargo/bin

# macports
pathadd /opt/local/bin
pathadd /opt/local/sbin

# anaconda
pathadd "$HOME"/anaconda2/bin

if [ -d "/opt/local/man" ]; then
  MANPATH=/opt/local/man:"$MANPATH"
fi

if [ -d "/opt/local/info" ]; then
  INFOPATH=/opt/local/info:"$INFOPATH"
fi

# prefer gnu core tools
if [ -e /usr/local/bin/brew ] && [ -d "$(brew --prefix coreutils)/libexec/gnubin" ]; then
    path=("$(brew --prefix coreutils)/libexec/gnubin", $path)
fi

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PATH
export MANPATH
export INFOPATH
