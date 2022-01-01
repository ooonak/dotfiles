#!/bin/bash

path=$(dirname $(realpath $0))

mkdir -p $HOME/.vim/{bundle,plugin}
ln -s ${path}/vim/cscope_maps.vim $HOME/.vim/plugin/
ln -s ${path}/vim/vimrc $HOME/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
