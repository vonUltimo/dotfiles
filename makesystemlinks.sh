#!/bin/bash
################################################
#                                              #
# This script creates a backup of the existing #
# dotfiles and symlinks to the new ones.       #
#                                              #
#                                              #
#                                              #
################################################

###               Variables                  ###

dir=~/dotfiles
bakdir=~/dotfiles_bak
rcfiles="vimrc bashrc gitconfig"


###            moving old stuff              ###

# create backup directory
echo "Creating backup directory: $bakdir"
mkdir -p $bakdir
echo "done"

# moving dotfiles
echo "moving the dotfiles to $bakdir"
for file in $rcfiles; do
	echo "moving $file..."
	mv ~/.$file $bakdir/$file
fi
echo "done"


###            creating symlinks             ###

# creating symlinks
echo "creating sylinks"
ln -s $dir/bash/bashrc ~/.bashrc
ln -s $dir/vim/vimrc ~/.vimrr
ln -s $dir/git/gitconfig ~/.gitconfig
echo "done"
