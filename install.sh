#!/bin/bash

if [ -f ~/.vimrc.bak ]; then
	ln -sfv $PWD/.vimrc ~/
else
	echo "先备份之前的.vimrc 到.vimrc.bak"
	mv -v ~/.vimrc ~/.vimrc.bak
	ln -sfv $PWD/.vimrc ~/
fi

if [ -d ~/.vim.bak ]; then
	ln -sfv $PWD/.vim ~/
else
	echo "先备份之前的.vim 到.vim.bak"
	mv -v ~/.vim ~/.vim.bak
	ln -sfv $PWD/.vim ~/
fi

echo "安装完成"
