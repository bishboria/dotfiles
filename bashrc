alias ls='ls -alG'

export HISTCONTROL=ignoredups
unset  HISTFILESIZE

export EDITOR=emacs
export GIT_EDITOR=emacs
export PGHOME=/usr/local/ProofGeneral
export PS1="$ "

PATH=/usr/local/bin:$PATH
PATH=$PGHOME/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
PATH=$PATH:/opt/local/bin
PATH=$HOME/.rbenv/bin:$PATH
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/packer

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi
