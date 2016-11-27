set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugins go before this
call vundle#end()
filetype plugin indent on

"Tagbar settings
let g:airline#extensions#tagbar#enabled = 1
let g:tagbar_ctags_bin = '~/Documents/ctags-5.8/ctags'
map<F8> :TagbarToggle<CR>

"Airline bar setting
:set laststatus=2

:let airline_left_sep = '▶'
:let airline_right_sep = '▶'

"g:airline#extensions#tabline#enabled = 1
:set timeoutlen=50

"Vim colorscheme
colorscheme molokai
set background=dark
syntax enable

":set transparency=15

"show line numbers on the left
:set number

:set mouse=a

"highlight search strings
:set hlsearch

"All necessary things for correct tabbing (2 spaces/tab) and auto indentation
"based on syntax
:set et
:set sw=2
:set textwidth=80
:set sts=2
:set smarttab
:set smartindent
:syntax on
:filetype indent on
:set autoindent
:set backspace=indent,eol,start

"Maps space bar to spell checker (initially off)
:nnoremap <space> :set spell!<cr>

"highlights 3 columns after 80 characters, to let you know to end your line
:set colorcolumn=+1 ",+2,+3 "highlight three columns after 'textwidth'
":set cc=80
:highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

"highlights trailing whitespace automatically removes it on write
:highlight ExtraWhitespace ctermbg=cyan guibg=cyan
:match ExtraWhitespace /\s\+$/
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
:autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * match ExtraWhitespace /\s\+$/
:autocmd BufWinLeave * call clearmatches()
":autocmd InsertLeave * match redraw!
:autocmd BufWritePre * :%s/\s\+$//e
