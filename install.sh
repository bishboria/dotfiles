# install stuff
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install graphviz
brew install the_silver_searcher
brew install proof-general
brew install vim
brew install wget
brew install caskroom/cask/brew-cask

brew cask install adium
brew cask install coqide
brew cask install divvy
brew cask install emacs
brew cask install firefox
brew cask install flux
brew cask install ghc
brew cask install git-annex
brew cask install google-chrome
brew cask install gopro-studio
brew cask install iterm2
brew cask install mactex
brew cask install mendeley-desktop
brew cask install postgres
brew cask install pg-commander
brew cask install smlnj
brew cask install spideroak
brew cask install spotify
brew cask install steam
brew cask install teensy
brew cask install torbrowser
brew cask install transmission
brew cask install twelf
brew cask install unity
brew cask install virtualbox
brew cask install vlc



# Sym link things
ln -s ~/.dotfiles/inputrc ~/.inputrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore

ln -s ~/.dotfiles/emacs ~/.emacs
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
