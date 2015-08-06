alias g="git status -sb"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gc="git diff --check"
alias gs="git show-branch"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias sshr='ssh -i ~/.ssh/menge -l root'
alias sshm='ssh -i ~/.ssh/menge -l macadmin'
alias scpr='scp -i ~/.ssh/menge'

alias tree='tree -L 1'

alias t='tropos'
alias s='tropos show'

alias play='ansible-playbook servers.yml'

if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi
