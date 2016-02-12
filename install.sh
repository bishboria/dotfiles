# install stuff
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash
brew install the_silver_searcher
brew install proof-general
brew install wget

brew cask install divvy
brew cask install firefox
brew cask install flux
brew cask install ghc
brew cask install git-annex
brew cask install google-chrome
brew cask install iterm2
brew cask install postgres
brew cask install pg-commander
brew cask install spideroak
brew cask install spotify
brew cask install steam
brew cask install teensy
brew cask install torbrowser   # easiest way around domain blocking
brew cask install transmission # to make programs like this useful again
brew cask install virtualbox
brew cask install vlc

# Sym link things
ln -s ~/.dotfiles/inputrc ~/.inputrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/emacs ~/.emacs
ln -s ~/.dotfiles/spacemacs ~/.spacemacs
ln -s ~/.dotfiles/vimrc ~/.vimrc
