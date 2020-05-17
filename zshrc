export PATH=$HOME/.go/bin:$HOME/bin:/usr/local/bin:$HOME/.pub-cache/bin:$HOME/.local/bin:$PATH
export ZSH=/home/vikkio/.oh-my-zsh
ZSH_THEME="candy"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias dc="docker-compose $1"
