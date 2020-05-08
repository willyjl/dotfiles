# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$PWD/.oh-my-zsh"

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

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
