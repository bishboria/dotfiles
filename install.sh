ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc
ln -s ~/.dotfiles/.emacs ~/.emacs
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

vim +BundleInstall +qa
