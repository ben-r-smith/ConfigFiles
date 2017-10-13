set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajmwagar/vim-dues'
Plugin 'lifepillar/vim-solarized8'
Plugin 'beyondmarc/glsl.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'raimondi/delimitmate'

"Plugins go before this
call vundle#end()
filetype plugin indent on

"Airline bar setting
set laststatus=2

let airline_left_sep = '▶'
let airline_right_sep = '▶'

set timeoutlen=50

syntax enable

"Vim colorscheme
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
"set t_Co=88

" Pymode settings.
let g:pymode_folding = 0

set background=dark
colorscheme hybrid

"show line numbers on the left
set number

set mouse=a

"highlight search strings
set hlsearch

"All necessary things for correct tabbing (2 spaces/tab) and auto indentation
"based on syntax
set et
set sw=2
set textwidth=80
set expandtab
set sts=2
set smarttab
set smartindent
syntax on
filetype indent on
set autoindent
set backspace=indent,eol,start

au! FileType python setl nosmartindent

"Maps space bar to spell checker (initially off)
nnoremap <space> :set spell!<cr>

"highlights 3 columns after 80 characters, to let you know to end your line
set colorcolumn=+1 ",+2,+3 "highlight three columns after 'textwidth'
":set cc=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

"highlights trailing whitespace automatically removes it on write
highlight ExtraWhitespace ctermbg=cyan guibg=cyan
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
":autocmd InsertLeave * match redraw!
autocmd BufWritePre * :%s/\s\+$//e

"Key mappings.
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf
