" vimrc by Long Changjin

let mapleader = '\'  " 设置<Leader>键
let maplocalleader = '\' " 设置<LocalLeader>键
let g:mapleader = '\'  " 设置<Leader>键
let g:maplocalleader = '\' " 设置<LocalLeader>键
set gfn=Monospace\ 9 " 字体设置
set nocompatible " 关闭兼容模式
syntax on " 打开语法高亮
filetype plugin on " 打开文件类型插件
set autoindent " 打开自动缩进
set nu " 显示行号
set showcmd " 显示命令
set lz " 当运行宏时，命令未执行完之前，不要重绘屏幕
set hid " 可以在没有保存得情况下切换buffer
set incsearch " 增量式搜索，边输入边搜索
set hlsearch " 高亮搜索
"set ignorecase " 忽略大小写搜索
"set nobackup " 关闭备份
set ai " 自动缩进
set si " 智能缩进
set cindent " C缩进
set t_Co=256
set go=
set autoread " 文件外部更改时，自动读入
color murphy " 颜色主题
" 文件编码
set encoding=utf8
set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1
set laststatus=2 " 总是显示状态栏
set cursorline
"set cursorcolumn
set autochdir  "自动切换目录
" 颜色设置
highlight CursorLine cterm=NONE ctermbg=darkgray
"highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#000000
"highlight CursorLine guibg=#000000
"highlight CursorColumn guibg=#000000
highlight Folded guibg=grey30 guifg=gold  "折叠
highlight FoldColumn guibg=grey30 guifg=tan  "折柱
set cc=81 " 81列处高亮
set wrap
set list
"set listchars=tab:>-,trail:-
set listchars=tab:>-
set backspace=indent,eol,start   "设置backspace删除
"set ignorecase    " 搜索忽略大小写
"set noignorecase  " 搜索忽略不大小写

"vundle设置 begine--------------------------------------------------------
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
let root = '~/.vim/bundle'
let src = 'http://github.com/gmarik/vundle.git'
if !isdirectory(expand(root, 1).'/vundle')
    exec '!git clone '.src.' '.shellescape(root, 1).'/vundle'
endif

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

"	需要先安装flake8
"	easy_install flake8
Bundle 'vim-flake8'
"	使用vim-syntastic需要flake8
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'groenewege/vim-less'
Bundle 'lastpos.vim'
"	注释管理插件
Bundle 'scrooloose/nerdcommenter'
"	 python文档查找，使用Pydoc <keyword>，如Pydoc re
"    PydocSearch <keyword>
"    当光标在某个词上时按'\pW'
Bundle 'fs111/pydoc.vim'
"	Python代码折叠，F换发所有折叠，f触发光标所在位置折叠，Shift+e执行当前脚本
Bundle 'python.vim'
"	Python拼写检查，:cc定位语法错误
"Bundle 'pyflakes.vim'
"	pyton pep8代码风格检查
"Bundle 'pep8.vim'
"	自动语法检查，需要pyflakes
"	默认迅捷 键是cs
"	g:pcs_hotkey，修改快捷键
"	g:pcs_check_when_saving，保存时检查
"Bundle 'python_check_syntax.vim'
"Bundle 'python_fn.vim'
"	文件浏览器，NerdTree命令
Bundle 'The-NERD-tree'
Bundle 'VimExplorer'
"Bundle 'lookupfile'
Bundle 'genutils'
"	使用Tab补全Python
Bundle 'Pydiction'
"	自动弹出补全窗口
Bundle 'AutoComplPop'
"Bundle 'taglist.vim'
"	比taglist更好的代码结构浏览
Bundle 'majutsushi/tagbar'
"Bundle 'winmanager'
"	在vim中运行shell
" Bundle 'Conque-Shell'
"	快速插入内容
Bundle 'snipMate'
"	vim git 管理
Bundle 'motemen/git-vim'
"	vim w3m
Bundle 'yuratomo/w3m.vim'
"	快速删除/修改光标周围配对的括号
Bundle 'tpope/vim-surround'
"	vim 中文输入法
Bundle 'vimim/vimim'

filetype plugin indent on
"    安装所设置插件
"    安装：BundleInstall，更新：BundleInstall!，卸载不在列表的插件：BundleClean
"    au VimEnter * BundleInstall
"vundle设置 end---------------------------------------------------------------

"    python_editing.vim http://www.vim.org/scripts/script.php?script_id=1494
"    matchit: %加强，可以匹配HTML, LaTeX等 http://www.vim.org/scripts/script.php?script_id=39
"    python代码折叠 F键,保存在vim/ftplugin
"    python_fold  http://vim.sourceforge.net/scripts/script.php?script_id=515
"    pyton代码折叠 zc折叠，zo打开
"	minibufexpl 浏览buffer
"	使用<C-Tab>和<C-S-Tab>切换buffer
"	http://www.vim.org/scripts/script.php?script_id=159
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 

" vim 中文输入法 http://www.vim.org/scripts/script.php?script_id=2506 vimim.vim
let g:vimim_cloud = 'sogou,baidu,qq'  
let g:vimim_map = 'tab_as_gi'  
let g:vimim_mode = 'dynamic'  
let g:vimim_mycloud = 0  
let g:vimim_punctuation = 2  
let g:vimim_shuangpin = 0  
let g:vimim_toggle = 'pinyin,sogou' 

" DoxygenToolkit 自动生成注释 http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Long Changjin <admin@longchangjin.cn>"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_enhanced_color=1
map <F5>a :DoxAuthor<CR>   " 作者信息
map <F5>f :Dox<CR>         " 函数注释
map <F5>b :DoxBlock<CR>    " 注释块
map <F5>l :DoxLic<CR>      " 版权信息
" Project插件设置，大写为递归作用
" project 项目管理工具 http://www.vim.org/scripts/script.php?script_id=69
map <F5>p <Plug>ToggleProject
map <F5>C <LocalLeader>C   " 创建项目
map <F5>c <LocalLeader>c   “
map <F5>R <LocalLeader>R   " 更新项目
map <F5>r <LocalLeader>r   ”
map <F5>W <LocalLeader>W   “ 删除文件
map <F5>w <LocalLeader>w   ”
map <F5>G <LocalLeader>G   ” 搜索文件
map <F5>g <LocalLeader>g   ” 搜索文件
"let g:proj_window_width=20    " 窗口宽度
let g:proj_window_increment=90  " 窗口宽度增加量
"let g:proj_flags='i'            " 在命令行显示文件名和当前工作路径
"let g:proj_flags='s'            " 开启语法高亮
"let g:proj_flags='t'            " 用<Space>进行窗口加宽
"let g:proj_flags='c'            " 打开文件后自动关闭项目
"let g:proj_flags='F'            " 显示浮动项目窗口
"let g:proj_flags='L'            " 根据CD自动设置目录
"let g:proj_flags='n'            " 显示行号
"let g:proj_flags='S'            " 启用排序
"let g:proj_flags='T'            " 子项目的折叠在更新时紧跟在当前折叠下方
"let g:proj_flags='v'            " 搜索时用:vimgrep取代:grep
let g:proj_flags='istcFLnSTv'


set wildmenu             " 显示补全菜单
set wildignore='*.pyc'   " 全局不显示的文件类项
" NERDTree 设置
let g:NERDTreeShowHidden=1 " 显示隐藏文件
let g:NERDTreeWinPos="left"
let g:NERDTreeIgnore=['\~$']
let g:NERDTreeQuitOnOpen=1 " 打开文件后关闭


au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType python filetype indent on " 打开自动缩进
au FileType python setlocal foldmethod=indent  "折叠pyton代码
" txt2tags高亮设置，http://www.vim.org/scripts/script.php?script_id=1157
au BufNewFile,BufRead *.t2t set ft=txt2tags
set foldlevel=10 "默认展开所有代码
au FileType c setlocal tabstop=8 shiftwidth=8 softtabstop=8
"au FileType c setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

noremap <F4> :NERDTreeToggle<CR>
noremap <C-F4> :TagbarToggle<CR>

"AutoComplPop设置
let g:acp_enableAtStartup = 0    "取消运行启用
"Pydiction设置
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
"snipMate设置
let g:snips_author = 'Long Changjin <admin@longchangjin.cn>'
"syntastic 语法检查设置
let g:syntastic_check_on_open=1
let g:syntastic_quiet_warning=0
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=0
let g:syntastic_python_checker_args='--ignore=E501,E302,E231,E261,E201,W402,W293,W291,E225,E203,E226'
nmap cs :SyntasticCheck<CR>
"nmap <F2> :Errors<CR>

"窗口操作
map <C-F3> :split<CR>  		"横向分割窗口
map <S-F3> :vsplit<CR>		"坚向侵害窗口
map <C-F2> :close<CR>   "关闭当前窗口
map <S-F2> :only<CR>    "只留当前窗口

" keymap
"map <C-j> j
"map <C-k> k
"map <C-h> h
"map <C-l> l
" 窗口移动
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-J> <C-w>J
nmap <C-K> <C-w>K
nmap <C-H> <C-w>H
nmap <C-L> <C-w>L
imap <C-j> <ESC>j
imap <C-k> <ESC>k
imap <C-h> <ESC>h
imap <C-l> <ESC>l

cmap <C-a> <Home>
cmap <C-e> <End>

imap <C-s> <ESC>:w<CR>
"imap <C-S> <ESC>:w!<CR>
nmap <C-s> :w<CR>
"nmap <C-S> :w!<CR>
vmap <C-x>c "+y
nmap <C-x>c "+p
nmap <C-n> <ESC>gt
nmap <C-p> <ESC>gT
imap <C-u> <ESC><C-u>
imap <C-d> <ESC><C-d>
imap <F2> cprt<Tab>
nmap <F2> icprt<Tab><ESC>
nmap <F8> :reg<CR>
imap "<Space> ""<Left>
imap (<Space> ()<Left>
imap [<Space> []<Left>
imap {<Space> {}<Left>
imap '<Space> ''<Left>
imap <<Space> <><Left>
nmap f zr
nmap F zm
nmap <F3> za
nmap <Leader>cn :cn<CR>   " vimgrep下一个结果
nmap <Leader>cp :cp<CR>   " vimgrep上一个结果
nmap <Leader>cw :cw<CR>   " 打开vimgrep quickfix窗口

function! Move_block_down()
	if line("'>") + 1 <= line("$")
		'<,'>mo '>+1
	endif
endfunction
function! Move_block_up()
	if line("'<") - 1 >= 0
		'<,'>mo '<-1
	endif
endfunction
"vmap <C-e> :mo '>+1<CR>gv
"vmap <C-y> :mo '<+'<-'>-1<CR>gv
"vmap <C-e> :call Move_block_down()<CR>
"vmap <C-y> :call Move_block_up()<CR>

