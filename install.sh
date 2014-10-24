# Download stuff
wget --no-clobber "https://adiumx.cachefly.net/Adium_1.5.10.dmg"
wget --no-clobber "http://coq.inria.fr/distrib/current/files/coqide-8.4pl4.dmg"
wget --no-clobber "http://mizage.com/downloads/Divvy.zip"
wget --no-clobber "http://emacsformacosx.com/emacs-builds/Emacs-24.4-universal.dmg"
wget --no-clobber "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-beta/mac/en-US/Firefox%2034.0b2.dmg"
wget --no-clobber "https://justgetflux.com/mac/Flux.zip"
wget --no-clobber "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v7.8.3-r1/ghc-7.8.3-r1.zip"
wget --no-clobber "http://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg"
wget --no-clobber "https://iterm2.com/downloads/stable/iTerm2_v2_0.zip"
wget --no-clobber "http://www.mendeley.com/client/get/2/"
wget --no-clobber "http://media.steampowered.com/client/installer/steam.dmg"
wget --no-clobber "https://www.torproject.org/dist/torbrowser/4.0/TorBrowser-4.0-osx32_en-US.dmg"
wget --no-clobber "https://transmission.cachefly.net/Transmission-2.84.dmg"
wget --no-clobber "http://twelf.plparty.org/releases/twelf-osx-1.7.1.dmg"
wget --no-clobber "http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-latest.tgz"
wget --no-clobber "http://www.mirrorservice.org/sites/videolan.org/vlc/2.1.5/macosx/vlc-2.1.5.dmg"
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
