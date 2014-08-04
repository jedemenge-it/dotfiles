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
export PROMPT_DIRTRIM=3


if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

PS1='[\[\e[33m\]\W\[\e[0m\]] '
PS2=' $ '

#eval "$(/Users/menge/tropos/bin/tropos init -)"
# /usr/local/(s)bin ist erwaehnt, damit die Homebrew tools vor den Systemtools aus /usr/bin genommen werden
export PATH=~/Development/tropos-cli/bin:~/bin:/usr/local/sbin:/usr/local/bin:$PATH

if [ -d ~/.rbenv ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

export EDITOR=vi
