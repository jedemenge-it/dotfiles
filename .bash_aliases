alias g="git status -sb"
alias vim="gvim --remote"
alias gpdev="git push dev1.zoomoringer.de develop:master"
alias t="tree -L 1"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ss='svn st'
alias ssu='svn up'
alias ssc='svn commit -m ""'
alias d='doing'

if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi
