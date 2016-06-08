# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# by Christopher Hirschmann @ Uberspace
# read this number of lines into history buffer on startup
# carefull with this, it will increase bash memory footprint and load time
export HISTSIZE=10000
# HISTFILESIZE is set *after* bash reads the history file
# (which is done after reading any configs like .bashrc)
# if it is unset at this point it is set to the same value as HISTSIZE
# therefore we must set it to NIL, in which case it isn't "unset",
# but doesn't have a value either, go figure
#unset HISTFILESIZE
export HISTFILESIZE=""

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# if [ -f ~/.git-completion.bash ]; then
# 	source ~/.git-completion.bash
# fi

source ~/.dotfiles/.git-prompt.sh

PS1='\[\e[33m\]\W\[\e[0m\]$(__git_ps1 " [%s]") > '
PS2=' >> '

# /usr/local/(s)bin ist erwaehnt, damit die Homebrew tools vor den Systemtools aus /usr/bin genommen werden
export PATH=~/Development/tropos-cli/bin:~/bin:/usr/local/sbin:/usr/local/bin:$PATH

if [ -d ~/.rbenv ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

export EDITOR=vi

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export ANSIBLE_NOCOWS=1
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
#export PATH=${HOME}/homebrew/bin:${PATH}

set -o vi
