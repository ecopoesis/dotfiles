# ~/.bash_profile: executed by bash for login shells.

set -o notify

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# setup history
shopt -s histappend
export HISTCONTROL="ignoredups"
export HISTSIZE=500000
export HISTFILESIZE=100000
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
export HISTTIMEFORMAT='%F %T '

case "$-" in
    *i*)    
        bind '"\e[A": history-search-backward'
        bind '"\e[B": history-search-forward'
        bind '"\e[C": forward-char'
        bind '"\e[D": backward-char'
esac

export SVN_EDITOR="vim"

# load bash_completion
export BASH_COMPLETION="$(cd ~; pwd)/.completion"
export BASH_COMPLETION_DIR="$(cd ~; pwd)/.completion.d"
source "$BASH_COMPLETION"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# load path
if [ -f ~/.path ]; then
   source ~/.path
fi

# load functions
if [ -f ~/.function ]; then
   source ~/.function
fi

# load aliases
if [ -f ~/.alias ]; then
   source ~/.alias
fi

# load prompt
if [ -f ~/.prompt ]; then
   source ~/.prompt
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

# make SSH agent work
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent)"
  trap "kill $SSH_AGENT_PID" 0
fi

# load RVM
if [ -d "$HOME/.rvm" ] ; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

# android SDK
if [ -d "$HOME/tools/android-sdk-macosx" ] ; then
    export ANDROID_HOME="$HOME"/tools/android-sdk-macosx
fi

# android NDK
if [ -d "$HOME/tools/android-ndk" ] ; then
    export ANDROID_NDK_HOME="$HOME"/tools/android-ndk
fi

# hive setup
if [ -d "$HOME"/tools/hadoop ] ; then
    export HADOOP_HOME="$HOME"/tools/hadoop
    pathadd "$HADOOP_HOME"/bin
fi

# hadoop setup
if [ -d "$HOME"/tools/hive ] ; then
    export HIVE_HOME="$HOME"/tools/hive
    pathadd "$HIVE_HOME"/bin
fi

# JVM development setup
export GRADLE_OPTS="-Xms512m -Xmx2048m -XX:+CMSClassUnloadingEnabled -Dorg.gradle.daemon=true -Dorg.gradle.parallel=true"
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:+CMSClassUnloadingEnabled -Duser.timezone=UTC"
export SBT_OPTS="-Xms512m -Xmx2048m -XX:+CMSClassUnloadingEnabled -Duser.timezone=UTC -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999"
export JAVA_OPTS="-Xms512m -Xmx4096m -XX:+CMSClassUnloadingEnabled -Duser.timezone=UTC"

# mac java
if [[ -f /usr/libexec/java_home ]]; then
    export JAVA_HOME="$(/usr/libexec/java_home -v 11.0)"
fi

# set the number of open files to be 1024
ulimit -S -n 1024

# why is it an immutable law of the universe that all software named spring has to suck?
export DISABLE_SPRING=1

export SALSIFY_HOME="$HOME"/code

if exists brew; then
    export FLAGS_GETOPT_CMD="$(brew --prefix gnu-getopt)/bin/getopt"
fi

# load PGVM
if [ -d "$HOME/.pgvm" ] ; then
    source "$HOME"/.pgvm/pgvm_env
fi

