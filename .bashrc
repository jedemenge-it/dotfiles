# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

#kürzt verzeichnisse ab
export PROMPT_DIRTRIM=5

export PS1='\u:\w$(__git_ps1 " [%s]")
\$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi
