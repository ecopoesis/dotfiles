set -o notify

HISTSIZE=5000000
SAVEHIST=100000
HIST_STAMPS="yyyy-mm-dd"
HISTORY_IGNORE="(cd|cd ..|tmux|exit|history|hist|hist *|pwd|clear|bg|fg|ls|ls *|lsd|la|pwd|* --help|* --version|* -?|git st|git ca|git cap)"
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

export SVN_EDITOR="vim"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer US English and use UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# make SSH agent work
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent)"
  trap "kill $SSH_AGENT_PID" 0
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

# set the number of open files to be 1024
ulimit -S -n 1024

# why is it an immutable law of the universe that all software named spring has to suck?
export DISABLE_SPRING=1

export SALSIFY_HOME="$HOME"/code

if exists brew; then
  export FLAGS_GETOPT_CMD="$(brew --prefix gnu-getopt)/bin/getopt"
fi
