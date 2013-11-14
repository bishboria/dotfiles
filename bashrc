alias mvim='mvim -v'
alias vim='mvim -v'
alias ls='ls -alG'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

export HISTCONTROL=ignoredups
unset  HISTFILESIZE

export EDITOR=vim
export GIT_EDITOR=vim
export PGHOME=/usr/local/ProofGeneral

PATH=/usr/local/bin:/usr/local/git/bin:$PATH
PATH=/usr/local/ProofGeneral/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
PATH=$PATH:/opt/local/bin
PATH=$HOME/.rbenv/bin:$PATH

eval "$(rbenv init -)"
