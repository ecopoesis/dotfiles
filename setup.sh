#!/bin/bash
############################
# setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# It also backs up the files it replaces into ~/dotfiles_old
############################

########## Variables

# get script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"
OLD=${DIR}_old
LEN=`expr ${#DIR} + 2`
##########

# create dotfiles_old in homedir
echo "Creating ${OLD} for backup of any existing dotfiles in ~"
mkdir -p ${OLD}

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for FILE in ${DIR}/*; do
    # skip *.sh files 
    if [[ ! ${FILE} == *.sh ]]; then
        BASE=`echo ${FILE} | cut -c ${LEN}-`
        echo "Moving ~/.${BASE} to ${OLD}"
        cp -LR ~/.${BASE} ${OLD}/${BASE}
        echo "Creating symlink to ${FILE} in home directory"
        rm -rf ~/.${BASE} && ln -s ${FILE} ~/.${BASE}
    fi
done
