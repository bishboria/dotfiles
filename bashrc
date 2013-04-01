PATH=/usr/local/bin:/usr/local/git/bin:$PATH # Add git to PATH

hitch() {
	command hitch "$@"
	if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
# Uncomment to persist pair info between terminal instances
# hitch
alias mvim='mvim -v'
alias vim='mvim -v'
alias ls='ls -alG'

export HISTCONTROL=ignoredups
unset  HISTFILESIZE

export EDITOR=vim
export GIT_EDITOR=vim
export PGHOME=/usr/local/ProofGeneral

PATH=/usr/local/ProofGeneral/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
