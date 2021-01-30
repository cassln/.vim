export EDITOR=vim
export LANG=en_US.UTF-8
export HISTCONTROL=ignoreboth
export CLICOLOR=1

export PATH=$PATH:$HOME/bin

alias ls="ls -F"
alias pretty-json='python -m json.tool'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

autoload -Uz compinit && compinit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
