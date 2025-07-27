#!/usr/bin/env zsh

set -x
echo '\nCreating system directories\n'

mkdir -p ~/.config
mkdir -p ~/Repos

echo '\nCreating ~/ config symlinks\n'

ln -fns ~/.dotfiles/ag/agignore ~/.agignore
ln -fns ~/.dotfiles/bash/bash_profile ~/.bash_profile
ln -fns ~/.dotfiles/bash/hushlogin ~/.hushlogin
ln -fns ~/.dotfiles/bash/inputrc ~/.inputrc
ln -fns ~/.dotfiles/nvim ~/.config/nvim
ln -fns ~/.dotfiles/starship/starship.toml ~/.config/starship.toml
ln -fns ~/.dotfiles/vim ~/.vim
ln -fns ~/.dotfiles/vim/vimrc ~/.vimrc
ln -fns ~/.dotfiles/zsh/.zshrc ~/.zshrc

echo '\nCreating ~/.config/ symlinks\n'

ln -fns ~/.dotfiles/erdtree ~/.config/erdtree
ln -fns ~/.dotfiles/ghostty ~/.config/ghostty
ln -fns ~/.dotfiles/karabiner ~/.config/karabiner
