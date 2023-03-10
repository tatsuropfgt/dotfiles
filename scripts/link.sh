#!/bin/sh

dotfiles_root=$(cd "$(dirname $0)"/.. && pwd)

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ${dotfiles_root}/dotfiles || exit' or 'cd ${dotfiles_root}/dotfiles || return
for file in .*; do
    ln -s ${PWD}/${file} ${HOME}
done
