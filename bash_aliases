alias g="git status -sb"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gc="git diff --check"
alias gs="git show-branch"

alias ll='ls -alF'
alias la='ls -A'
alias l='less'
alias j='jrnl'

alias sshr='ssh -i ~/.ssh/menge -l root'
alias sshg='ssh -i ~/.ssh/menge -o "ProxyCommand ssh -q -W %h:%p gateway-x" -l root'

alias scpr='scp -i ~/.ssh/menge'
alias scpg='scp -i ~/.ssh/menge -o "ProxyCommand ssh -q -W %h:%p gateway-x"'

alias t='tropos'
alias s='tropos show'

alias play='ansible-playbook'
alias xplay='ansible-playbook --ssh-common-args="-o \"ProxyCommand ssh -q -W %h:%p gateway-x\""'

alias tele="cat ~/wiki/benutzerverwaltung/telefonliste.md | grep"

alias pki="javaws https://pki.pca.dfn.de/guira/guira.jnlp 2> /dev/null &"

alias habit="cat ~/Drafts/journal.tpl | j habit && j habit -1 --edit"
alias 5min="cat ~/Drafts/5min.tpl | j && j -1 --edit"

alias v=vagrant

# because i have a homebrew vim installation (to use blowfish2)
alias vi=vim

if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi
