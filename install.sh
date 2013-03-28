ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc

ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore

ln -s ~/.dotfiles/gemrc ~/.gemrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

ln -s ~/.dotfiles/tmux-haskell /usr/local/bin/tmux-haskell
ln -s ~/.dotfiles/tmux-ruby /usr/local/bin/tmux-ruby
ln -s ~/.dotfiles/tmux-rails /usr/local/bin/tmux-rails
ln -s ~/.dotfiles/tmux-attach /usr/local/bin/tmux-attach
ln -s ~/.dotfiles/tmux-stop /usr/local/bin/tmux-stop
ln -s ~/.dotfiles/tmux-idris /usr/local/bin/tmux-idris

ln -s ~/.dotfiles/emacs /usr/local/bin/emacs

vim +BundleInstall +qa
