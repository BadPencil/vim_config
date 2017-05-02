
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

" 插件放在这下面
call vundle#begin()

" VIM插件管理
Plugin 'VundleVim/Vundle.vim'

" 代码补全
"Plugin 'Valloric/YouCompleteMe'

" 美化状态栏
Plugin 'Lokaltog/vim-powerline'

call vundle#end()

filetype plugin indent on 

" show line number
set nu

" syntax hightlight
syntax on

" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI

" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

" 自动缩进
set autoindent
set cindent

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 搜索忽略大小写
set ignorecase

" 为C程序提供自动缩进
set smartindent

" NO warning sound
set noeb

" 总是显示状态栏
set laststatus=2

set t_Co=256

" 设置状态栏主题风格
let g:Powerline_symbols = 'fancy'

" 设置文件编码
set encoding=utf-8

" 高亮显示搜索结果
set	hlsearch






