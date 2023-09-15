#!/bin/sh

dotfiles_root=$(cd "$(dirname $0)"/.. && pwd)

if [ -f ${HOME}/.zshrc ]; then
    mv ${HOME}/.zshrc ${HOME}/.zshrc_backup
fi

cd ${dotfiles_root}/dotfiles || exit
ln -s ${PWD}/.zshrc ${HOME}
