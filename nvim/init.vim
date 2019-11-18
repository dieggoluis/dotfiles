call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
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


call plug#end()


let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 5
let g:deoplete#max_list = 50


" enable tab completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" close preview window on leaving the insert mode
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:airline_theme = 'base16_spacemacs'
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let @/ = ""
set number

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set hlsearch  " highlight search and search while typing
set incsearch
set cpoptions+=x  " stay at seach item when <esc>

nnoremap <CR> :noh<CR><CR>

nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set fillchars+=vert:\│
hi VertSplit ctermfg=Black ctermbg=DarkGray

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
