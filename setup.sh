#!/bin/bash
############################
# setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# It also backs up the files it replaces into ~/dotfiles/old
############################

########## Variables

# get script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"
OLD=${DIR}/old
LEN=`expr ${#DIR} + 2`
##########

# remove old ~/dotfiles_old
rm -rf ${HOME}/dotfiles_old

# create dotfiles_old in homedir
echo "Creating ${OLD} for backup of any existing dotfiles in ~"
mkdir -p ${OLD}

# move any existing dotfiles in homedir to dotfiles/old directory, then create symlinks
for FILE in ${DIR}/*; do
    # skip *.sh files and README.md
    if [[ ! ${FILE} == *.sh ]] && [[ ! ${FILE} == *README.md ]] && [[ ! ${FILE} == ${OLD} ]] && [[ ! ${FILE} == *mac ]] && [[ ! ${FILE} == *jetbrains ]]; then
        BASE=`echo ${FILE} | cut -c ${LEN}-`

        if [ -f ${BASE} ]; then
          echo "Moving ~/.${BASE} to ${OLD}"
          cp -LR ~/.${BASE} ${OLD}/${BASE}
        fi

        echo "Creating symlink to ${FILE} in home directory"
        rm -rf ~/.${BASE} && ln -s ${FILE} ~/.${BASE}
    fi
done

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  FONT_DIR="${HOME}/Library/Fonts"
else
  # Linux
  FONT_DIR="${HOME}/.local/share/fonts"
  mkdir -p ${FONT_DIR}
fi

echo "Copying fonts..."
cp ${DIR}/fonts/* ${FONT_DIR}

# setup Mac desktop specific stuff
if [[ `uname` == 'Darwin' ]]; then
  # iterm
  defaults delete com.googlecode.iterm2
  rm -rf ~/Library/Preferences/com.googlecode.iterm2.plist && ln -s ${DIR}/mac/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
  defaults read com.googlecode.iterm2
fi
