export HISTCONTROL=ignoreboth
export HISTSIZE=10000 # unlimited
unset  HISTFILESIZE
shopt -s histappend

export EDITOR=emacs
export GIT_EDITOR=vi
export PS1="$ "

### Needed for agda. brew install icu4c.
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"

PATH=$PATH:$HOME/.cabal/bin
PATH=/usr/local/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=$PATH:/opt/local/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/packer

### Added by the Heroku Toolbelt
### leave here in case I need to edit company websites, or whatever
export PATH="/usr/local/heroku/bin:$PATH"

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias emacsd='cd ~/.emacs.d'
alias phd='cd ~/Documents/programming/phd'
alias agdad='cd ~/Documents/programming/agda/agda'
alias ls='ls -alG'
alias okular='open /usr/local/Cellar/okular/19.12.3/bin/okular.app'


# add identities to agent from keychain
ssh-add -A &> /dev/null

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
[ -f "/Users/stuartgale/.ghcup/env" ] && source "/Users/stuartgale/.ghcup/env" # ghcup-env
