set -o notify

# setup history
shopt -s histappend
export HISTCONTROL="ignoredups"

export SVN_EDITOR="vim"

# load bash_completion
export BASH_COMPLETION="`cd ~; pwd`/.completion"
export BASH_COMPLETION_DIR="`cd ~; pwd`/.completion.d"
source $BASH_COMPLETION

# load aliases
if [ -f ~/.alias ]; then
   source ~/.alias
fi

# load prompt
if [ -f ~/.prompt ]; then
   source ~/.prompt
fi

# load path
if [ -f ~/.path ]; then
   source ~/.path
fi

# prefer gnu core tools
if [ -e /usr/local/bin/brew ]; then
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
fi

# load NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# load direnv
eval "$(direnv hook bash)"

# make SSH agent work
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval `ssh-agent`
  trap "kill $SSH_AGENT_PID" 0
fi

# load RVM
if [ -d "${HOME}/.rvm" ] ; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

# android SDK
if [ -d "${HOME}/tools/android-sdk-macosx" ] ; then
    export ANDROID_HOME=${HOME}/tools/android-sdk-macosx
fi

# android NDK
if [ -d "$HOME/tools/android-ndk" ] ; then
    export ANDROID_NDK_HOME=${HOME}/tools/android-ndk
fi

# hive setup
if [ -d ${HOME}/tools/hadoop ] ; then
    export HADOOP_HOME=${HOME}/tools/hadoop
    pathadd ${HADOOP_HOME}/bin
fi

# hadoop setup
if [ -d ${HOME}/tools/hive ] ; then
    export HIVE_HOME=${HOME}/tools/hive
    pathadd ${HIVE_HOME}/bin
fi

# JVM development setup
export GRADLE_OPTS="-Xms512m -Xmx2048m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Dorg.gradle.daemon=true -Dorg.gradle.parallel=true"
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Duser.timezone=UTC"
export SBT_OPTS="-Xms512m -Xmx2048m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Duser.timezone=UTC -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999"
export JAVA_OPTS="-Xms512m -Xmx4096m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Duser.timezone=UTC"

# mac java
if [[ -f /usr/libexec/java_home ]]; then
    export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
fi

# set the number of open files to be 1024
ulimit -S -n 1024
