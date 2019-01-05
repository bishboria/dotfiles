export HISTCONTROL=ignoreboth
export HISTSIZE=10000 # unlimited
unset  HISTFILESIZE
shopt -s histappend

export EDITOR=emacs
export GIT_EDITOR=vi
export PS1="$ "

PATH=$PATH:$HOME/.cabal/bin
PATH=/usr/local/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
PATH=$PATH:/opt/local/bin
PATH=$HOME/.rbenv/bin:$PATH
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/packer

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias emacs='/Applications/Aquamacs.app/Contents/MacOS/Aquamacs'
alias emacsd='cd ~/.emacs.d'
alias phd='cd ~/Documents/programming/phd'
alias agdad='cd ~/Documents/programming/agda/agda'
alias ls='ls -alG'
