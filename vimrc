set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajmwagar/vim-dues'
Plugin 'w0ng/vim-hybrid'
Plugin 'raimondi/delimitmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'bogado/file-line'

" Plugins go before this
call vundle#end()
filetype plugin indent on

 "Airline bar setting
set laststatus=2
let airline_left_sep = '▶'
let airline_right_sep = '▶'
set timeoutlen=50

" Colorscheme
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Gitgutter.
highlight clear SignColumn
set updatetime=100

set background=dark
colorscheme hybrid

" Pymode settings.
let g:pymode_folding = 0
au! FileType python setl nosmartindent

" Show line numbers on the left.
set number
set rnu

" Use relative line numbers unless in insert mode.
augroup toggle_relative_number
autocmd InsertEnter * :setlocal nornu
autocmd InsertLeave * :setlocal rnu

" Mouse.
set mouse=a

" Search.
set hlsearch
set incsearch
set ignorecase
set smartcase

" Text rendering.
set encoding=utf-8
set scrolloff=5

" Swp files.
set directory=$HOME/.vim/swp//

" Disable backups.
set nobackup

" Persist undo history.
set undofile
set undodir=$HOME/.vim/undo

" All necessary things for correct tabbing (2 spaces/tab) and auto indentation
" based on syntax.
set et
set sw=4
set textwidth=100
set expandtab
set sts=4
set smarttab
set smartindent
syntax enable
filetype indent on
set autoindent
set backspace=indent,eol,start

" Folding.
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual
augroup auto_save_folds
autocmd!
autocmd BufWinLeave * mkview
autocmd BufWinLeave * silent loadview

" Maps space bar to spell checker (initially off).
nnoremap <space> :set spell!<cr>

" Highlights 1 columns after 80 characters, to let you know to end your line.
set colorcolumn=+1
set cc=100
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Highlight trailing whitespace and automatically remove it on write.
highlight ExtraWhitespace ctermbg=cyan guibg=cyan
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * :%s/\s\+$//e

" Make repeat operator work in visual mode.
vnoremap . :normal.<CR>

" Move visual selection.
vnoremap J :m '>+1<CR>gv=gv'
vnoremap K :m '<-2<CR>gv=gv'

" Leader mappings.
let mapleader=","
nnoremap <Leader>w :w<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P
