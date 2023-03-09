# oh-my-zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
  zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh


# homebrew

export PATH="$PATH:/opt/homebrew/bin" 

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"


#zlib

export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"


# python3

alias python='python3'
alias pip='pip3'
