" map <leader> key
let mapleader=";"

" 去掉有关vi一致性模式,避免操作习惯上的局限
set nocompatible

" 自动检测文件类型
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 中文不乱码
" 设置编码
set fileencoding=utf-8
set termencoding=utf-8

" 解决打开显示replace mode
" set fileformats=unix
set encoding=utf-8

" 显示行号
set nu
set relativenumber

" 突出显示当前行
set cursorline
" 突出显示当前列
" set cursorcolumn

" 显示括号匹配
set showmatch

" 设置缩进
" 设置Tab长度为4空格
set tabstop=4
set softtabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4
" 继承前一行的缩进方式
set autoindent
set expandtab
" 光标在行首时按退格键能退回上一行尾
set backspace=indent,eol,start

" vim 在当前目录下执行命令
set autochdir

" 设置tab和空格标记
set list
set listchars=tab:▸\ ,trail:▫

" 设置粘贴模式
" set paste

" 显示状态栏和光标当前位置
set laststatus=2
set ruler

" vim配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启语法高亮
syntax enable

" 使用tab键补全时，在状态栏显示匹配的列表
set wildmenu

" 打开文件取消上次高亮
exec "nohlsearch"
" 高亮显示所有搜索到的内容
set hlsearch
" 光标立刻跳转到搜索到的内容
set incsearch
" 搜索不区分大小写
set ignorecase
set smartcase
" 搜索到最后匹配的位置后，再次搜索不回到第一个匹配处
set nowrapscan
" 清除搜索结果高亮
noremap <leader>c :noh<CR><ESC>
" 修改按键映射，=/- 跳转下/上一个结果
noremap = nzz
noremap - Nzz

" 按下Esc后尽快生效
set ttimeout
set ttimeoutlen=100

" 显示还没有输完整的命令
set showcmd

" 设置自动补全的选项
set completeopt=longest,noinsert,menuone,noselect,preview

" 取消鼠标支持
set mouse=a

" 退出 vim 再次打开文件后光标回到上次编辑处
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal!g'\"" | endif

" ----------------------------------------------
" 光标样式修改
"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" ---------------------------------------------

" 映射 s 键无操作
map s <nop>
map n <nop>

" s for split
" 垂直分屏光标在右窗口
nnoremap sl :set splitright<CR>:vsplit<CR>
" 垂直分屏光标在左窗口
nnoremap sh :set nosplitright<CR>:vsplit<CR>
" 水平分屏光标在下窗口
nnoremap sj :set splitbelow<CR>:split<CR>
" 水平分屏光标在上窗口
nnoremap sk :set nosplitbelow<CR>:split<CR>

" 窗口切换
" 切换到右窗口
nnoremap <leader>l <C-w>l
" 切换到左窗口
nnoremap <leader>h <C-w>h
" 切换到下窗口
nnoremap <leader>j <C-w>j
" 切换到上窗口
nnoremap <leader>k <C-w>k

" 方向键调整窗口大小
nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

" 切换水平和竖直分屏
nnoremap sv <C-w>t<C-w>H
nnoremap s- <C-w>t<C-w>K

" 打开新标签
noremap tn :tabe<CR>
" 切换标签
noremap tj :-tabnext<CR>
noremap tk :+tabnext<CR>

" ------
" 保存退出的按键映射
nnoremap S :w<CR>
nnoremap Q :q<CR>
nnoremap R :source $MYVIMRC<CR>

" 快速翻页的按键映射
noremap J 9j
noremap K 9k

" 映射行首行尾按键
noremap L $
noremap H 0

" double click <leader> key to find the next place
" holder and edit it.
nnoremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" 使光标距离窗口边缘5行
set scrolloff=5

" Opening a terminal window
nnoremap <LEADER>/ :set splitbelow<CR>:term<CR><C-w>:res 10<CR>

" vim 插件
call plug#begin('~/.vim/plugged')
" atom one 主题
Plug 'rakr/vim-one'
Plug 'connorholyday/vim-snazzy'
" 美化 vim 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Nerdtree 文件浏览器
Plug 'preservim/nerdtree'
" coc 自动补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vim peekaboo 剪贴板辅助
Plug 'junegunn/vim-peekaboo'
" vim markdown preview
Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}, 'for':['markdown', 'vim-plug']}
" vim table mode
Plug 'dhruvasagar/vim-table-mode',  {'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
" vim devicons
Plug 'ryanoasis/vim-devicons'
call plug#end()

" vim 插件设置
" vim-airline 设置
" enable smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'
" set separaters
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#show_close_button = 0

" nerdtree 设置
" nerdtree 快捷键
map <leader>nt :NERDTreeToggle<CR>
" 设置 nerdtree 的箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" 选用主题
" colorscheme snazzy
" let g:SnazzyTransparent = 1

" coc 设置
" 不显示coc错误提示
let g:coc_disable_startup_warning = 1
" 自动安装coc插件
let g:coc_global_extensions = ['coc-clangd', 'coc-marketplace', 'coc-json', 'coc-vimlsp', 'coc-pairs', 'coc-yank', 'coc-ci']
" some vim config to make coc work better
set hidden " enable jump to another file without saving the current buffer
set updatetime=100 " make vim respond faster
set shortmess+=c " show less when autocompletion
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
	endfunction]
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use <c-o> to trigger completion.
inoremap <silent><expr> <c-o> coc#refresh()

" coc-yank 设置
nnoremap <leader>p :<C-u>CocList -A --normal yank<cr>

" markdown preview 设置
" snippets
source $HOME/.vim/md-snippets.vim

" for markdown compatible corner
let g:table_mode_corner = '|'

" coc-ci 设置，中文分词跳转
nmap <silent> w <Plug>(coc-ci-w)
nmap <silent> b <Plug>(coc-ci-b)
