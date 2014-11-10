alias ls='ls -alG'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

export HISTCONTROL=ignoredups
unset  HISTFILESIZE

export EDITOR=emacs
export GIT_EDITOR=emacs
export PGHOME=/usr/local/ProofGeneral
export PS1="\h$ "
export SMLNJ_HOME=/usr/local/smlnj
export CM_PATHCONFIG=$SMLNJ_HOME/lib/pathconfig

PATH=/usr/local/bin:/usr/local/git/bin:$PATH
PATH=$PGHOME/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
PATH=$PATH:/opt/local/bin
PATH=$HOME/.rbenv/bin:$PATH
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/packer
PATH=$PATH:$SMLNJ_HOME/bin

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.3.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi