#!/bin/sh

mkdir -p $HOME/.vim/{bundle,plugin}
ln -s ./vim/cscope_maps.vim $HOME/.vim/plugin/
ln -s ./vim/vimrc $HOME/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
