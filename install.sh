# install stuff
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash
brew install the_silver_searcher
brew install wget
brew install chezscheme
brew install mit-scheme
brew install ghc
brew install cabal-install
brew install icu4c # needed for agda.

brew install --cask iterm2
brew install --cask firefox
brew install --cask google-chrome
brew install --cask mactex
brew install --cask spideroakone
brew install --cask spotify
brew install --cask steam
brew install --cask teensy
brew install --cask tor-browser   # easiest way around domain blocking
brew install --cask transmission  # to make programs like this useful again
brew install --cask vlc
brew install --cask 1password
brew install --cask emacs

# Sym link things
ln -s ~/.dotfiles/inputrc ~/.inputrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/emacs ~/.emacs
ln -s ~/.dotfiles/spacemacs ~/.spacemacs
ln -s ~/.dotfiles/vimrc ~/.vimrc

ln -s ~/.dotfiles/early-init.el ~/.emacs.d/early-init.el

# install Agda
cabal install Agda
