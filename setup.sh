#!/bin/bash
set -eo pipefail

echo 'symlinking vimrc'
ln -sf $PWD/vimrc ~/.vimrc
echo 'symlinking nvim configs to vim configs'
ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.config/nvim/init.vim
echo 'symlinking tmux.conf'
ln -sf $PWD/tmux.conf ~/.tmux.conf
echo 'symlinking psqlrc'
ln -sf $PWD/psqlrc ~/.psqlrc
echo 'downloading vim-plug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
