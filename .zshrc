export ZSH="/home/willy/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git vscode)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

export EDITOR='vi'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.yarn/bin/:$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

if grep -q Microsoft /proc/version; then
  export DISPLAY=localhost:0.0
  export DOCKER_HOST=localhost:2375
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
