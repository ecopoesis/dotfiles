# ~/.bash_profile: executed by bash for login shells.

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval `ssh-agent`
  trap "kill $SSH_AGENT_PID" 0
fi

# mac java 
if [ -d /Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home/jre ]; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home/jre
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

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH=${HOME}/bin:${PATH}
fi

# set PATH to include macports
if [ -d "/opt/local/bin" ] ; then
  PATH=/opt/local/bin:${PATH}
fi
if [ -d "/opt/local/sbin" ] ; then
  PATH=/opt/local/sbin:${PATH}
fi
if [ -d "/opt/local/man" ] ; then
  MANPATH=/opt/local/man:${MANPATH}
fi
if [ -d "/opt/local/info" ] ; then
  INFOPATH=/opt/local/info:${INFOPATH}
fi

# include mysql bins
if [ -d "/usr/local/mysql/bin" ] ; then
  PATH=/usr/local/mysql/bin:${PATH}
fi

# scala
if [ -d "/Applications/scala/scala-2.10.1/bin" ] ; then
  PATH=/Applications/scala/scala-2.10.1/bin:${PATH}
fi

# sbt
if [ -d "/Applications/sbt/bin" ] ; then
  PATH=/Applications/sbt/bin:${PATH}
fi

# mysql libs on the mac
#export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH=${HOME}/man:${MANPATH}
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH=${HOME}/info:${INFOPATH}
# fi

if [ -d "${HOME}/.rvm" ] ; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
fi

export MAVEN_OPTS="-Xms512 -Xmx1024m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:MaxPermSize=512m -Duser.timezone=UTC"

##
# Your previous /Users/miker/.bash_profile file was backed up as /Users/miker/.bash_profile.macports-saved_2012-09-13_at_13:04:13
##

# MacPorts Installer addition on 2012-09-13_at_13:04:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

