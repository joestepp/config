#!/bin/bash
set -eo pipefail

ln -sf $PWD/tmux.conf ~/.tmux.conf
ln -sf $PWD/psqlrc ~/.psqlrc
ln -sf $PWD/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
