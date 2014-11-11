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

echo "从 Git 安装插件...."
git submodule update --init

echo "编译 vimproc..."
pushd .vim/bundle/vimproc.vim
make
popd

echo "编译 ctags..."
pushd .vim/bundle/phpcomplete.vim
rm -rfv ctags
tar xf ctags-better-php-parser.tar.bz2
sh ./configure
make
sudo make install
popd

echo "安装完成"
