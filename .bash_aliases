alias g="git status -sb"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gc="git diff --check"
alias gs="git show-branch"

alias ll='ls -alF'
alias la='ls -A'
alias l='less'
alias j='jrnl'

alias sshr='ssh -i ~/.ssh/menge -l root'
alias sshm='ssh -i ~/.ssh/menge -l macadmin'
alias scpr='scp -i ~/.ssh/menge'

alias tree='tree -L 1'

alias t='tropos'
alias s='tropos show'

alias play='ansible-playbook servers.yml'

alias tele="cat ~/wiki/benutzerverwaltung/telefonliste.md | grep"

alias pki="javaws https://pki.pca.dfn.de/guira/guira.jnlp &"

alias habit="cat ~/Drafts/journal.tpl | j habit && j habit -1 --edit"
alias 5min="cat ~/Drafts/5min.tpl | j && j -1 --edit"

if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi
