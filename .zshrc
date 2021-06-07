if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/dotfiles"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/.aliases

export EDITOR='vi'
export PATH="$HOME/.rbenv/bin:$HOME/.yarn/bin/:$HOME/.rbenv/plugins/ruby-build/bin:$HOME/.jenv/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

if [ -f /proc/version ] && grep -q Microsoft /proc/version; then
  # specific for wsl
  export DISPLAY=localhost:0.0
  export DOCKER_HOST=localhost:2375
  source $DOTFILES/.wsl-aliases
fi

eval "$(rbenv init -)"
eval "$(jenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
