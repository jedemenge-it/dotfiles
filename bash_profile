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

if [ -f /usr/share/bash-completion/completions/pass ]; then
	. /usr/share/bash-completion/completions/pass
fi

PS1='\h :: \[\e[33m\]\W\[\e[0m\] > '
PS2='>> '

if [ -d ~/.rbenv ]; then
	export PATH=~/.rbenv/bin:$PATH
	eval "$(rbenv init -)"
fi

if [ -d ~/bin ]; then
	export PATH=~/bin:$PATH
fi

if [ -d ~/tropos-cli ]; then
	export PATH=~/tropos-cli/bin:$PATH
fi

export EDITOR=vi
export ANSIBLE_NOCOWS=1
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

export PATH=~/usr/node-8.9.1/bin:$PATH

# find an existing ssh-agent and use it
. .dotfiles/ssh-find-agent.sh
ssh-find-agent -a || eval $(ssh-agent) > /dev/null
