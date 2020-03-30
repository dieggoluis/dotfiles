" VIM config

" vim-plug{{{
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

set encoding=utf-8

" theme{{{
set background=dark
colorscheme gruvbox
" }}}

" basic configs{{{
" leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" indent
set autoindent
set copyindent

" cursor
set cursorline
set cursorcolumn

" show row numbers
set number

" search engine
set ignorecase
set hlsearch
set incsearch
set cpoptions+=x
nnoremap <CR> :noh<CR><CR>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" refresh config
nnoremap <leader>r :so $NVIMRC<CR>

" physical line instead of logical
nnoremap j gj
nnoremap k gk

" switch buffers without saving
set hidden

" easy buffers navigation
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" clear last search
let @/ = ""

" vim updatetime
set updatetime=500

" enable tab completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" close preview window on leaving the insert mode
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  " disable automatic comment insert
" }}}

" deoplete{{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 5
let g:deoplete#max_list = 50
"}}}

" airline{{{
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
" }}}

" neoformat{{{
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
" }}}

" ale{{{
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
" }}}

" yank highlight{{{
let g:highlightedyank_highlight_duration = 500
" }}}

" jedi{{{
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
" }}}

" tagbar{{{
nmap <Leader>t :TagbarToggle<CR>
" }}}

" NERDTree{{{
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" }}}

" NERDComment{{{
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
" }}}
