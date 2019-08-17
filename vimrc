" ---------------------------------------------------------
"                       Diego VIMRC
" ---------------------------------------------------------
set nocompatible
filetype off
set hidden

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'                      " vim plugin manager

Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'scrooloose/nerdtree'                " Project and file navigation
Plugin 'vim-ctrlspace/vim-ctrlspace'        " Tabs/Buffers/Fuzzy/Workspaces/Bookmarks
Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy search
Plugin 'Valloric/YouCompleteMe'             " auto complete
Plugin 'liuchengxu/space-vim-dark'          " colorschema
Plugin 'luochen1990/rainbow'                " rainbow parenthesis


call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on

" ---------------------------------------------------------
" General settings
" ---------------------------------------------------------

set encoding=utf-8
set t_Co=256
set background=dark
let g:airline_theme = 'violet'
" colorscheme space-vim-dark

syntax enable

set cursorline
set cursorcolumn

set shell=/bin/bash
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=20                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

set autochdir                               " navigation over buffers without saving them

let mapleader=","

"=====================================================
" AirLine settings
"=====================================================
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1


" ---------------------------------------------------------
" up and down on physical line (instead of logical)
" ---------------------------------------------------------
nnoremap j gj
nnoremap k gk


" ---------------------------------------------------------
" mapping cut to the black hole register
" ---------------------------------------------------------
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d


" ---------------------------------------------------------
" gui options
" ---------------------------------------------------------
if has("gui_running")
    " nnoremap y "+y
    " vnoremap y "+y
    set mouse=a
    set guifont=Source\ Code\ Pro\ for\ Powerline:h12
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif

" remove traling spaces
autocmd BufWritePre * %s/\s\+$//e

" ---------------------------------------------------------
" YCM
" ---------------------------------------------------------
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" ---------------------------------------------------------
" Rainbow parenthesis
" ---------------------------------------------------------
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

