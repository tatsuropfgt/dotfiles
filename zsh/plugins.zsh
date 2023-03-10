# https://zenn.dev/k4zu/articles/zsh-tutorial#dotfiles
# p10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# highlight
zinit light zdharma/fast-syntax-highlighting

# suggestion
zinit light zsh-users/zsh-autosuggestions

# git open
zinit light paulirish/git-open

# bat
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# https://qiita.com/obake_fe/items/da8f861eed607436b91c
## zeno設定
zinit ice lucid depth"1" blockf
zinit light yuki-yano/zeno.zsh

if [[ -n $ZENO_LOADED ]]; then
  # ここに任意のZLEの記述を行う
  bindkey ' '  zeno-auto-snippet
  bindkey '^m' zeno-auto-snippet-and-accept-line
  bindkey '^i' zeno-completion
  bindkey '^g' zeno-ghq-cd
  bindkey '^r' zeno-history-selection
  bindkey '^x' zeno-insert-snippet
fi

export ZENO_HOME=$SCRIPT_DIR/zsh/zeno

