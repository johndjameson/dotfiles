echo 'Creating system directories'

mkdir -p ~/.config
mkdir -p ~/Repos

echo 'Creating ~/ config symlinks'

ln -fns ~/.dotfiles/ag/agignore ~/.agignore
ln -fns ~/.dotfiles/bash/bash_profile ~/.bash_profile
ln -fns ~/.dotfiles/bash/hushlogin ~/.hushlogin
ln -fns ~/.dotfiles/bash/inputrc ~/.inputrc
ln -fns ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -fns ~/.dotfiles/nvim ~/.config/nvim
ln -fns ~/.dotfiles/starship/starship.toml ~/.config/starship.toml
ln -fns ~/.dotfiles/vim ~/.vim
ln -fns ~/.dotfiles/vim/vimrc ~/.vimrc

echo 'Creating ~/.config/ symlinks'

ln -fns ~/.dotfiles/erdtree ~/.config/erdtree
ln -fns ~/.dotfiles/ghostty ~/.config/ghostty
ln -fns ~/.dotfiles/karabiner ~/.config/karabiner
