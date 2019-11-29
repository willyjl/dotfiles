export ZSH="/home/willy/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

export EDITOR='vi'
export PATH="$HOME/.rbenv/bin:$HOME/.yarn/bin/:$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export GOPATH="$HOME/repo/golang"

if grep -q Microsoft /proc/version; then
  export DISPLAY=localhost:0.0
  export DOCKER_HOST=localhost:2375
  source ~/.wsl-aliases
fi

eval "$(rbenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
