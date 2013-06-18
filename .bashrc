# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#kuerzt verzeichnisse ab
export PROMPT_DIRTRIM=5


if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -d ~/.rbenv ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

PS1='[\u \[\e[33m\]\w\[\e[0m\]]$ '
PS2=' $ '
