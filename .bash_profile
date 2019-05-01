export EDITOR=vim
export LANG=en_US.UTF-8

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=$PATH:$HOME/bin
PATH=$PATH:$(go env GOPATH)/bin

alias ls="ls -F"
alias pretty-json='python -m json.tool'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'