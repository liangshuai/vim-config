filetype indent on
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'sainnhe/edge'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let g:ctrlp_map = '<c-p>'
let g:airline_theme='deus'
let g:EasyMotion_smartcase = 1
let javascript_enable_domhtmlcss = 1
let mapleader=','
let g:mapleader=','
" This is only necessary if you use
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
set background=dark
set ruler
set nocompatible
set number
set hlsearch
set showcmd
set backspace=2
set cursorline
set incsearch
set lazyredraw
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set t_Co=256
set termguicolors
set background=dark
map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"
colorscheme edge
map <C-n> :NERDTreeToggle<CR>
inoremap jj <Esc>
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
noremap <c-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap no :!node %<cr>
nmap ,n :NERDTreeFind<CR>
