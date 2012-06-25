PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=/usr/local/git/bin:$PATH # Add git to PATH

hitch() {
	command hitch "$@"
	if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
# Uncomment to persist pair info between terminal instances
# hitch
alias mvim='mvim -v'
alias ls='ls -alG'

export EDITOR=vim
export GIT_EDITOR=vim

function parse_git_dirty {
	# if something to commit, show repo information in red.
	[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo $(tput setaf 1)
}

function parse_git_branch {
	echo $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
}

function parse_git_stash {
	local stash=$(git stash list 2> /dev/null | grep "WIP on $(parse_git_branch)" | sort -rn | head -n1)
	stash=$(echo $stash | cut -d':' -f1)
	[[ $stash != "" ]] && echo :stash
}

function git_prompt_info() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "$(tput setaf 2)$(parse_git_dirty)$(tput bold):$(parse_git_branch)$(tput setaf 1)$(parse_git_stash)$(tput sgr0)"
}

function rvm_info() {
	local lines=$(cat .rvmrc 2> /dev/null) || return
	[[ $lines > 0 ]] && echo ":$(rvm current)"
}

PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(git_prompt_info)\[$(rvm_info)\] \[$(tput bold)$(tput setaf 3)\]>\[$(tput sgr0)\] '
