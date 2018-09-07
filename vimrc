" 关闭文件类型侦测
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

" 目录树
Plugin 'scrooloose/nerdtree'


call vundle#end()

" 根据侦测到的不同类型加载对应的插件
filetype plugin indent on 

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启文件类型检测
filetype on

" 显示行号
set number

" 开启语法高亮
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

" 关闭警告声
set noeb

" 总是显示状态栏
set laststatus=2

" 设置终端为256色
set t_Co=256

" 设置状态栏主题风格
let g:Powerline_symbols = 'fancy'

" 设置 backspace 工作模式
set backspace=indent,eol,start
     
" 设置文件编码
set encoding=utf-8

" 设置匹配模式
set showmatch

" 高亮显示搜索结果
set	hlsearch

" vim 自身命令行模式智能补全
set wildmenu

" 设置字体
set guifont=Courier\ New

" 设置目录树关闭隐藏的快捷键
map <F2> :NERDTreeToggle<CR>

" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时 则直接退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 启动 Vim 自动启动 nerd tree


" 启动时光标在编辑栏
wincmd w
autocmd VimEnter * wincmd w

" 高亮列
"set cursorcolumn
" 高亮行
"set cursorline

"---------------------------------------------------
" 打开文件时自动回到上次编辑的地方
"---------------------------------------------------
if has("autocmd")
	autocmd BufRead *.txt set tw=78
	autocmd BufReadPost *
	 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
	 \		exe "normal g'\"" |
	 \ endif
endif

"---------------------------------------------------
" 按 F5 运行程序
"-------------------------------------------------- 
map <F5> : call CompileRun()<CR>
func! CompileRun()
	exec "w"	
	if &filetype == 'c'
		exec "!gcc % -o %"
		exec "!time ./%<"
	elseif &filetype == 'python'
		exec "!time python3 %"
	endif
endfunc


