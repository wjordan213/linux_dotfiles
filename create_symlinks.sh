#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired linux_dotfiles in ~/linux_dotfiles
############################

########## Variables

dir=~/linux_dotfiles                    # linux_dotfiles directory
olddir=~/linux_dotfiles_old             # old linux_dotfiles backup directory
files="agignore bash_profile bashrc pryrc tmux.conf tmuxreset vimrc"    # list of files/folders to symlink in homedir


##########

# create linux_dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing linux_dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the linux_dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing linux_dotfiles in homedir to linux_dotfiles_old directory, then create symlinks from the homedir to any files in the ~/linux_dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing linux_dotfiles from ~ to $olddir"
    mv ~/.$file ~/linux_dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
