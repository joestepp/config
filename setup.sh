#!/bin/bash
set -eo pipefail

echo 'symlinking zshrc'
ln -sf $PWD/zshrc ~/.zshrc
echo 'symlinking vimrc'
ln -sf $PWD/vimrc ~/.vimrc
echo 'symlinking nvim configs to vim configs'
ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.config/nvim/init.vim
echo 'symlinking tmux.conf'
ln -sf $PWD/tmux.conf ~/.tmux.conf
echo 'symlinking psqlrc'
ln -sf $PWD/psqlrc ~/.psqlrc
echo 'symlinking zimrc'
ln -sf $PWD/zimrc ~/.zimrc