# Download and install emacs
emacsimage="Emacs-24.3-universal-10.6.8.dmg"
wget --no-clobber "http://emacsformacosx.com/emacs-builds/"$emacsimage &&
hdiutil mount $emacsimage &&
cp -R /Volumes/Emacs/Emacs.app /Applications/ &&
hdiutil unmount /Volumes/Emacs



# Download and install ghc app
ghcversion="7.8.3"
ghcrevision="-r1"
ghcfolder="v"$ghcversion$ghcrevision"/"
ghczip="ghc-"$ghcversion$ghcrevision".zip"
ghcapp="ghc-"$ghcversion".app"
ghclocation=$ghcfolder$ghczip
wget --no-clobber "https://github.com/ghcformacosx/ghc-dot-app/releases/download/"$ghclocation &&
unzip -q $ghczip &&
cp -R $ghcapp /Applications



# Download and install proof general
wget --no-clobber http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-latest.tgz &&
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



# Clean up downloaded/expanded files once everything else has worked
rm $emacsimage
rm -rf $ghczip
rm -rf $ghcapp
rm Proof-latest.tgz
