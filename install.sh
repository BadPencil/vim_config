#!/usr/bin/env bash
#
# vim 配置文件自动化

# 下载插件管理软件Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp vimrc ~/.vimrc

# Install vim plug
vim -c "PluginInstall" -c "q" -c "q"
	
