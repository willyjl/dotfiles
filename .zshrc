export ZSH="/home/willy/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

export EDITOR='vi'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
