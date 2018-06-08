" vimrc by Long Changjin

let mapleader = '\'  " 设置<Leader>键
let maplocalleader = '\' " 设置<LocalLeader>键
let g:mapleader = '\'  " 设置<Leader>键
let g:maplocalleader = '\' " 设置<LocalLeader>键
set gfn=Monospace\ 9 " 字体设置
set nocompatible " 关闭兼容模式
syntax on " 打开语法高亮
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
" 文件编码
set encoding=utf8
set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1
set laststatus=2 " 总是显示状态栏
"set statusline=%1*%-52F\ %2*\ %{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')}\ %3*\ %{&fenc!=''?&fenc:&enc}\ %1*\ %Y\ %4*\ %04l/%03c\ %2*\ 0x%04.4B\ %1*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}\ %5*\ %-3m\ 
"set statusline=%<%F%1*%m%*%r%y%=%b\ 0x%B\ \ [l,c]%l,%c%V\ %p%%\ 
"hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

set cursorline
"set cursorcolumn
set autochdir  "自动切换目录 与phpcomplete、vimshell冲突
set cc=81 " 81列处高亮
set wrap  " 自动换行
set list  " 把制表符显示为^I ,用$标示行尾（使用list分辨尾部的字符是tab还是空格）
"set listchars=tab:>-,trail:-
set listchars=tab:>-,trail:·
set backspace=indent,eol,start   "设置backspace删除
"set ignorecase    " 搜索忽略大小写
"set noignorecase  " 搜索忽略不大小写

"vundle设置 begine--------------------------------------------------------
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
let root = '~/.vim/bundle'
let src = 'https://github.com/gmarik/Vundle.vim.git'
if !isdirectory(expand(root, 1).'/Vundle.vim')
    exec '!git clone '.src.' '.shellescape(root, 1).'/Vundle.vim'
endif

filetype off    " 配置vundle前需要先关闭文件类型的检测
" set the runtime path to include Vundle and initialize
" 新版的 Vundle 将 Bundle 命令改为了 Plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"	需要先安装flake8
"	easy_install flake8
"Plugin 'vim-flake8'
"	使用vim-syntastic需要flake8
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
" less
Plugin 'groenewege/vim-less'
Plugin 'lastpos.vim'
"	注释管理插件
Plugin 'scrooloose/nerdcommenter'
"	 python文档查找，使用Pydoc <keyword>，如Pydoc re
"    PydocSearch <keyword>
"    当光标在某个词上时按'\pW'
Plugin 'fs111/pydoc.vim'
"	Python代码折叠，F换发所有折叠，f触发光标所在位置折叠，Shift+e执行当前脚本
Plugin 'python.vim'
"	Python拼写检查，:cc定位语法错误
"Plugin 'pyflakes.vim'
"	pyton pep8代码风格检查
"Plugin 'pep8.vim'
"	自动语法检查，需要pyflakes
"	默认迅捷 键是cs
"	g:pcs_hotkey，修改快捷键
"	g:pcs_check_when_saving，保存时检查
"Plugin 'python_check_syntax.vim'
"Plugin 'python_fn.vim'
"	文件浏览器，NerdTree命令
Plugin 'nerdtree'
"	很强大的文件浏览器,VE命令
Plugin 'VimExplorer'
"Plugin 'lookupfile'
Plugin 'genutils'
"	使用Tab补全Python
"Plugin 'Pydiction'
"	自动弹出补全窗口
" Plugin 'AutoComplPop'
"Plugin 'taglist.vim'
"	比taglist更好的代码结构浏览
Plugin 'majutsushi/tagbar'
"Plugin 'winmanager'
"	在vim中运行shell
"Plugin 'Conque-Shell'
"	快速插入内容
"Plugin 'snipMate'
" 替代 snipMate
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"	vim git 管理
"Plugin 'motemen/git-vim'
"	强大的git工具
Plugin 'tpope/vim-fugitive'
"	vim w3m
Plugin 'yuratomo/w3m.vim'
"	快速删除/修改光标周围配对的括号
Plugin 'tpope/vim-surround'
" rails开发工具
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
"	vim 中文输入法
"Plugin 'vimim/vimim'
"	vim 中文文档
Plugin 'vimcdoc.svn'
"	自动补全括号
"Plugin 'Townk/vim-autoclose'
"	Yank history navigation, <C-p>和<C-n>粘贴历史文字
"Plugin 'YankRing.vim'
"	Python mode (indentation, doc, refactor, lints, code checking, motion and
"	operators, highlighting, run and ipdb breakpoints)
"Plugin 'klen/python-mode'
"	Python and PHP Debugger
"Plugin 'jaredly/vim-debug'

"	Gvim colorscheme
Plugin 'Wombat'
"	Terminal Vim with 256 colors colorscheme
Plugin 'fisadev/fisa-vim-colorscheme'
"	Color Scheme Explorer
Plugin 'csExplorer'
"	一些颜色主题
Plugin 'ColorSamplerPack'
"	自动注释
Plugin 'DoxygenToolkit'
"	项目管理
Plugin 'project'
Plugin 'matchit'
Plugin 'python_fold'
"	markdown实时预览
"Plugin 'vim-instant-markdown-py'

"	lisp开发插件
Plugin 'kovisoft/slimv'
"	Ack-grep插件。需要先安裝ack-grep
Plugin 'mileszs/ack.vim'
"	html/css插件
" Plugin 'mattn/zencoding-vim'
" zencoding的升级版
Plugin 'mattn/emmet-vim'
"	buffer浏览
"Plugin 'fholgado/minibufexpl.vim'
"	另一个buffer浏览
Plugin 'vim-scripts/bufexplorer.zip'
"	多人协作
"	pip install twisted
"Plugin 'CoVim'
"	多光标
Plugin 'vim-multiple-cursors'
"	对齐线
Plugin 'nathanaelkane/vim-indent-guides'
" jsLint
" npm install jslint
" Plugin 'nathanaelkane/jslint.vim'

Plugin 'evidens/vim-twig'
" php symfony
" requires Vim 7.3.885+ with Lua enabled
Plugin 'Shougo/neocomplete.vim'
" vimproc需要编译
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'

" zeal文档查询
" http://zealdocs.org/download.html
"Plugin 'Keithbsmiley/investigate.vim'

"	我的插件
"Plugin 'myyoudao_dict'
"Plugin 'myweibo'
"Plugin 'wosuopu/manual_search.vim'     " 与 macvim 不兼容

" coffescript
Plugin 'kchmck/vim-coffee-script'
" Plugin 'carlosvillu/coffeScript-VIM-Snippets'
" Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'carlosgaldino/elixir-snippets'

" 方便的文件跳转工具
Plugin 'kien/ctrlp.vim'

" 目录差异对比
Plugin 'DirDiff.vim'

" dbgp远程调试
Plugin 'wusuopu/vdebug'

" asciidoc
Plugin 'asciidoc'

" Blade模板
Plugin 'xsbeats/vim-blade'
" Slim模板
Plugin 'slim-template/vim-slim'
" Rust
Plugin 'rust-lang/rust.vim'
"Yet Another JavaScript Syntax
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'styled-components/vim-styled-components'
" jsx
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rvm'
" Swift
Plugin 'toyamarinyon/vim-swift'
" Dash.app
Plugin 'rizzatti/dash.vim'
" mustache and handlebars mode for vim
Plugin 'mustache/vim-mustache-handlebars'
" Gradle
Plugin 'tfnico/vim-gradle'
" vue.js
Plugin 'darthmall/vim-vue'
" 自动对齐的工具
Plugin 'junegunn/vim-easy-align'
" 自动补全括号
Plugin 'Raimondi/delimitMate'

" PHP相关的插件
if exists("g:php_dev_mode") && g:php_dev_mode
  set autochdir!
  " phpcomplete依赖
  " https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags
  " 需要编译安装 ctags-better-php-parser
  " 然后在项目目录执行命令： ctags -R --fields=+aimS --languages=php
  " Plugin 'shawncplus/phpcomplete.vim'
  " 安装 composer.phar
  " curl -s https://getcomposer.org/installer | php
  " 安装依赖包： php composer.phar install
  " Plugin 'm2mdas/phpcomplete-extended'
  " Plugin 'm2mdas/phpcomplete-extended-symfony'
  " vimshell
  Plugin 'Shougo/neocomplcache'
  Plugin 'Shougo/vimshell.vim'
  Plugin 'Shougo/unite-ssh'
  Plugin 'ujihisa/vimshell-ssh'
  au FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
  " au FileType php setlocal completefunc=phpcomplete_extended#CompletePHP

  let g:phpcomplete_index_composer_command = 'composer'
end
" 代码格式化插件
Plugin 'sbdchd/neoformat'

call vundle#end()   " Vundle 初始化完成

"color longchang " 颜色主题
if has("gui_running")
  colorscheme darkZ
else
  "colorscheme candycode
  "colorscheme herald
  "colorscheme sorcerer
  "colorscheme zendnb
  colorscheme longchang
endif     " has 
" 颜色设置
"highlight CursorLine cterm=NONE ctermbg=black
"highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#000000
"highlight CursorLine guibg=#000000
"highlight CursorColumn guibg=#000000
"highlight Folded guibg=grey30 guifg=gold  "折叠
"highlight FoldColumn guibg=grey30 guifg=tan  "折柱
"highlight ColorColumn cterm=NONE ctermbg=001

filetype plugin on " 打开文件类型插件
filetype plugin indent on
"    安装所设置插件
"    安装：BundleInstall，更新：BundleInstall!，卸载不在列表的插件：BundleClean
"    au VimEnter * BundleInstall
"vundle设置 end---------------------------------------------------------------

" PowerLine
let g:Powerline_stl_path_style='full'

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

" bufexplorer
let g:bufExplorerSortBy='fullpath'
let g:bufExplorerSplitOutPathName=0
let g:bufExplorerShowRelativePath=0

" vim 中文输入法 http://www.vim.org/scripts/script.php?script_id=2506 vimim.vim
"let g:vimim_cloud = 'sogou,baidu,qq'  
let g:vimim_map = 'tab_as_gi'  
let g:vimim_mode = 'dynamic'  
let g:vimim_mycloud = 0  
let g:vimim_punctuation = 2  
let g:vimim_shuangpin = 0  
"let g:vimim_toggle = 'pinyin,sogou' 

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
map <F5>c <LocalLeader>c   "
map <F5>R <LocalLeader>R   " 更新项目
map <F5>r <LocalLeader>r   "
map <F5>W <LocalLeader>W   " 删除文件
map <F5>w <LocalLeader>w   "
map <F5>G <LocalLeader>G   " 搜索文件
map <F5>g <LocalLeader>g   " 搜索文件
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
let &wildignore=''       " 全局不显示的文件类项
" NERDTree 设置
let g:NERDTreeShowHidden=1 " 显示隐藏文件
let g:NERDTreeWinPos="left"
let g:NERDTreeIgnore=['\~$', '\.pyo$', '\.bak$']
let g:NERDTreeQuitOnOpen=1 " 打开文件后关闭

set tabstop=2 expandtab shiftwidth=2 softtabstop=2
set foldmethod=indent

au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType python filetype indent on           " 打开自动缩进
au FileType python setlocal foldmethod=indent   "折叠pyton代码
au FileType python let &wildignore='*.pyo'
" txt2tags高亮设置，http://www.vim.org/scripts/script.php?script_id=1157
au BufNewFile,BufRead *.t2t set ft=txt2tags
set foldlevel=10 "默认展开所有代码
"au FileType c setlocal tabstop=8 shiftwidth=8 softtabstop=8
au FileType c filetype indent on                " 打开自动缩进
au FileType c setlocal foldmethod=syntax   "折叠C代码
au FileType c setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType cpp filetype indent on                " 打开自动缩进
au FileType cpp setlocal foldmethod=syntax   "折叠C代码
au FileType cpp setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
"au FileType javascript setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType javascript filetype indent on           " 打开自动缩进
au FileType javascript setlocal foldmethod=indent   "折叠代码
au FileType ruby filetype indent on
au FileType ruby setlocal foldmethod=syntax
"au FileType ruby setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2

au FileType php setlocal tabstop=4 expandtab! shiftwidth=4 softtabstop=4

" less高亮设置
au BufNewFile,BufRead *.less set ft=less
" coffee高亮设置
au BufNewFile,BufRead *.coffee set ft=coffee
" elixir高亮设置
au BufNewFile,BufRead *.ex,*.exs set ft=elixir
" asciidoc高亮设置
au BufNewFile,BufRead *.asciidoc,*.adoc set ft=asciidoc
" Slim模板
au BufNewFile,BufRead *.slim set ft=slim
" Rust
au BufNewFile,BufRead *.rs set ft=rust

au BufRead,BufNewFile *.md setlocal filetype=markdown
au BufNewFile,BufRead *.es6 set ft=javascript

au VimEnter * if &diff | execute 'windo set wrap' | endif

"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

noremap <F4> :NERDTreeToggle<CR>
noremap ;l :NERDTreeToggle<CR>
"noremap <F4> :VE<CR><CR>
noremap <F6> :TagbarToggle<CR>
noremap <C-F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"

"AutoComplPop设置
let g:acp_enableAtStartup = 0    "取消运行启用
"Pydiction设置
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
"snipMate设置
let g:snips_author = 'Long Changjin <admin@longchangjin.cn>'
"ultisnips设置
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"syntastic 语法检查设置
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_check_on_open=1
let g:syntastic_quiet_warning=0
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=0

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" let g:neocomplete#disable_auto_complete = 1
let g:EclimCompletionMethod = 'omnifunc'
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.java = '\k\.\k*'
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


" E128 continuation line under-indented for visual indent
" E261 at least two spaces before inline comment
" E302 expected 2 blank lines, found 1
" E501 line too long (91 > 79 characters)
" W402 imported but unused
" E701 multiple statements on one line (colon)
"let g:syntastic_python_checker_args='--ignore=E501,E302,E231,E261,E201,W293,W291,E225,E203,E226'
" W291 trailing whitespace
let g:syntastic_python_checker_args='--ignore=W291,E701'
nmap cs :SyntasticCheck<CR>
nmap <F7> :Errors<CR>

" zencoding设置
let g:user_zen_leader_key = '<c-x>'
" emmet设置
let g:user_emmet_leader_key='<c-x>'

" indent-guides设置
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" vimshell设置
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

" slimv
let g:slimv_swank_cmd = '! xterm -e clisp --load ~/.vim/bundle/slimv/slime/swank-clisp.lisp &'
let g:lisp_rainbow=1

" CtrlP
let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
map <F6>p :CtrlP

" vdebug dbgp
let g:vdebug_leader_key = g:mapleader

" multiple-cursor与neocomplete
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction
" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
" 修改按键，避免与上下翻页冲突
let g:multi_cursor_next_key='<C-j>'
let g:multi_cursor_prev_key='<C-k>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_start_key='<F9>'
let g:multi_cursor_start_key='<C-j>'
let g:multi_cursor_start_word_key='g<C-j>'

"窗口操作
map <C-F3> :split<CR>  		"横向分割窗口
map <S-F3> :vsplit<CR>		"坚向侵害窗口
map <C-F2> :close<CR>   "关闭当前窗口
map <S-F2> :only<CR>    "只留当前窗口

" keymap
" 窗口移动
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

cmap <C-a> <Home>
cmap <C-e> <End>

imap <C-s> <ESC>:w<CR>
"imap <C-S> <ESC>:w!<CR>
nmap <C-s> :w<CR>
"nmap <C-S> :w!<CR>
vmap <C-x>c "+y
nmap <C-x>c "+p
map <C-x>q :qa<CR>
nmap <C-n> <ESC>gt
nmap <C-p> <ESC>gT
"nmap tt :tabedit .<CR>
"nmap tn :tabn<CR>
"nmap tp :tabp<CR>
imap <C-u> <ESC><C-u>
imap <C-d> <ESC><C-d>
imap <C-b> <ESC>i
imap <C-f> <ESC>la
"imap <F2> cprt<Tab>
"nmap <F2> icprt<Tab><ESC>
nmap <F8> :reg<CR>
nmap <F9>on :setlocal spell spelllang=en_us<CR>
nmap <F9>off :setlocal nospell<CR>

nmap f zr
nmap F zm
nmap <F3> za
nmap <Leader>cn :cn<CR>   " vimgrep下一个结果
nmap <Leader>cp :cp<CR>   " vimgrep上一个结果
nmap <Leader>cw :cw<CR>   " 打开vimgrep quickfix窗口
nmap <Leader>lw :lw<CR>   " 打开lvimgrep 当前窗口

map <F6>hex :%!xxd<CR>      " Hex模式
map <F6>unhex :%!xxd -r<CR> " 正常模式
map <F6>ig :let &wildignore='*.pyc'<CR>
map <F6>unig :let &wildignore=''<CR>

function! MoveBlockUp() range
    call MoveBlock(a:firstline, a:lastline, a:firstline-2)
endfunction

function! MoveBlockDown() range
    call MoveBlock(a:firstline, a:lastline, a:lastline+1)
endfunction

function! MoveBlock(startline, endline, new_line_pos)
    let s:cmd = a:startline . ',' . a:endline . ' move ' . a:new_line_pos
    execute s:cmd
    execute "normal! gv"
endfunction

" Moving block
vnoremap <silent> <c-s-k> :call MoveBlockUp()<CR>
vnoremap <silent> <c-s-j> :call MoveBlockDown()<CR>

"" Moving one line
"nnoremap <silent> <c-s-j> :m+1<CR>
"nnoremap <silent> <c-s-k> :m-2<CR>
"inoremap <silent> <c-s-j> <ESC>:m+1<CR>gi
"inoremap <silent> <c-s-k> <ESC>:m-2<CR>gi

"" Add empty line of above and bellow of one line
"noremap <silent> <c-s-o> O<ESC>jo<ESC>k


set showtabline=2  " 0, 1 or 2; when to use a tab pages line
set tabline=%!MyTabLine()  " custom tab pages line


function! MyTabLine()
  let s = ''
  let t = tabpagenr()
  let i = 1
  while i <= tabpagenr('$')
    let buflist = tabpagebuflist(i)
    let winnr = tabpagewinnr(i)
    let s .= '%' . i . 'T'
    let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
    let bufnr = buflist[winnr - 1]
    let file = bufname(bufnr)
    let buftype = getbufvar(bufnr, 'buftype')
    if buftype == 'nofile'
      if file =~ '\/.'
        let file = substitute(file, '.*\/\ze.', '', '')
      endif
    else
      let file = fnamemodify(file, ':p:t')
    endif
    if file == ''
      let file = '[No Name]'
    endif
    let s .= string(i) . ":"
    let file = strpart(file, 0, 25)
    let s .= file
    let i = i + 1
  endwhile
  let s .= '%T%#TabLineFill#%='
  let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
  return s
endfunction

map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>0 10gt

" 设置参考线
map ,ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction

" 自动切换目录
map <F6>ch :call SwitchAutoChdir()<CR>
function! SwitchAutoChdir()
  if &autochdir == 1
    execute "set autochdir!"
  else
    execute "set autochdir"
  endif
endfunction

"let g:loaded_syntastic_javascript_jshint_checker = 1
"let g:loaded_syntastic_javascript_jslint_checker = 1
"let g:loaded_syntastic_javascript_jsxhint_checker = 1
"let g:syntastic_javascript_eslint_conf = "./.eslintrc"
let g:syntastic_javascript_checkers = ['eslint', 'flow']

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1   " js支持jsdoc注释
let g:javascript_plugin_flow = 1    " js支持flow语法

let g:vimshell_editor_command = 'vim'
