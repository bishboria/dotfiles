ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc
ln -s ~/.dotfiles/emacs ~/.emacs
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

# begin work stuff
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
# end   work stuff

git clone git://github.com/gmarik/vundle.git ~/.dotfiles/vundle.git
vim +BundleInstall +qa
