# ~/.bash_profile: executed by bash for login shells.

# add a directory to the path if it isn't there already, and the directory exists
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

pathadd /bin
pathadd /sbin
pathadd /usr/bin
pathadd /usr/sbin
pathadd /usr/local/bin
pathadd /usr/local/sbin
pathadd ${HOME}/bin
pathadd /usr/local/mysql/bin
pathadd ~/tools/scala/bin
pathadd ~/tools/sbt/bin
pathadd ~/tools/activator
pathadd ~/tools/android-sdk-macosx/platform-tools
pathadd ~/bin

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval `ssh-agent`
  trap "kill $SSH_AGENT_PID" 0
fi

# mac java 
if [[ -f /usr/libexec/java_home ]]; then
    #export JAVA_HOME=`/usr/libexec/java_home -v 1.7.0_71`
    export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_45`
fi

# hive and hadoop
if [ -d /Applications/hadoop-1.1.1 ] ; then
    export HADOOP_HOME=/Applications/hadoop-1.1.1
    PATH=${HADOOP_HOME}/bin:${PATH}
fi

if [ -d /Applications/hive-0.10.0 ] ; then
    export HIVE_HOME=/Applications/hive-0.10.0
    PATH=${HIVE_HOME}/bin:${PATH}
fi

# source the system wide bashrc if it exists
if [ -e /etc/bash.bashrc ] ; then
  source /etc/bash.bashrc
fi

# source the users bashrc if it exists
if [ -e "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

if [ -d "/opt/local/man" ] ; then
  MANPATH=/opt/local/man:${MANPATH}
fi
if [ -d "/opt/local/info" ] ; then
  INFOPATH=/opt/local/info:${INFOPATH}
fi

# load RVM
if [ -d "${HOME}/.rvm" ] ; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
fi

# android SDKs
if [ -d "${HOME}/tools/android-sdk-macosx" ] ; then
    export ANDROID_HOME=${HOME}/tools/android-sdk-macosx
fi

if [ -d "$HOME/tools/android-ndk-r9d" ] ; then
    export ANDROID_NDK_HOME=${HOME}/tools/android-ndk-r9d
fi

# use mac git instead of macports
if [ -f /usr/bin/git ] ; then
    alias git=/usr/bin/git
fi

export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Duser.timezone=UTC"
export SBT_OPTS="-Xms512m -Xmx2048m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Duser.timezone=UTC -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999"
export JAVA_OPTS="-Xms512m -Xmx4096m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Duser.timezone=UTC"

function mountAndroid { hdiutil attach ~/code/android.dmg.sparseimage -mountpoint /Volumes/android; }

# MacPorts Installer addition on 2014-12-29_at_12:51:02: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# set the number of open files to be 1024
ulimit -S -n 1024


