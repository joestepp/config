#!/bin/bash
set -eo pipefail

echo 'symlinking zshrc'
ln -sf $PWD/zshrc ~/.zshrc || true
echo 'symlinking vimrc'
ln -sf $PWD/vimrc ~/.vimrc || true
echo 'symlinking nvim configs to vim configs'
ln -sf ~/.vim ~/.config/nvim || true
ln -sf ~/.vimrc ~/.config/nvim/init.vim || true
echo 'symlinking tmux.conf'
ln -sf $PWD/tmux.conf ~/.tmux.conf || true
echo 'symlinking psqlrc'
ln -sf $PWD/psqlrc ~/.psqlrc || true
echo 'symlinking zimrc'
ln -sf $PWD/zimrc ~/.zimrc || true