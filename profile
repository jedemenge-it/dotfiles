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

if [ -d /usr/local/etc/bash_completion.d ]; then
	. /usr/local/etc/bash_completion.d/git-completion.bash
	. /usr/local/etc/bash_completion.d/git-prompt.sh
	. /usr/local/etc/bash_completion.d/brew
	. /usr/local/etc/bash_completion.d/npm
	. /usr/local/etc/bash_completion.d/cheat.bash
fi

PS1='\h :: \[\e[33m\]\W\[\e[0m\]$(__git_ps1 " [%s]") > '
PS2='>> '

# /usr/local/(s)bin ist erwaehnt, damit die Homebrew tools vor den Systemtools aus /usr/bin genommen werden
export PATH=~/Development/tropos-cli/bin:~/bin:/usr/local/sbin:/usr/local/bin:$PATH

if [ -d ~/.rbenv ]; then
	eval "$(rbenv init -)"
fi

export EDITOR=vi
export ANSIBLE_NOCOWS=1
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

#set -o vi
