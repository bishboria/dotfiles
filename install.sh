# Download stuff
wget --no-clobber "http://emacsformacosx.com/emacs-builds/Emacs-24.4-universal.dmg"
wget --no-clobber "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-beta/mac/en-US/Firefox%2034.0b2.dmg"
wget --no-clobber "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v7.8.3-r1/ghc-7.8.3-r1.zip"
wget --no-clobber "http://coq.inria.fr/distrib/current/files/coqide-8.4pl4.dmg"
wget --no-clobber "http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-latest.tgz"
tar xpzf Proof-latest.tgz -C /usr/local



# Sym link things
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc
ln -s ~/.dotfiles/emacs ~/.emacs
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf



# Get vim plugins
git clone git://github.com/gmarik/vundle.git ~/.dotfiles/vundle.git
vim +BundleInstall +qa
