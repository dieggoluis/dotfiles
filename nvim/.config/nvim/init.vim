if !exists('g:vscode')
    " NVIM config
    " ----------------------------
    " vim-plug{{{
    call plug#begin('~/.local/share/nvim/plugged')
    
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'machakann/vim-highlightedyank'
    Plug 'junegunn/goyo.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'cespare/vim-toml'
    Plug 'mtdl9/vim-log-highlighting'
    Plug 'Rigellute/shades-of-purple.vim'
    Plug 'raimon49/requirements.txt.vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'easymotion/vim-easymotion'

    call plug#end()
    " }}}
    
    set encoding=utf-8
    
    " theme{{{
    set background=dark
    set termguicolors
    " colorscheme shades_of_purple
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
    
    " airline{{{
    let g:airline_theme = 'shades_of_purple'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#tabline#buffer_nr_show = 1
    " }}}
    
    " yank highlight{{{
    let g:highlightedyank_highlight_duration = 500
    " }}}
    
    " NERDTree{{{
    " nnoremap <Leader>f :NERDTreeToggle<Enter>
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
    
    nmap <C-_>   <Plug>NERDCommenterToggle
    vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
    " }}}
    
    " Terraform{{{
    let g:terraform_fmt_on_save=1
    "}}}
    
    " default easymotion <leader><leader>{w, s, f}
    
    " save and execute python code
    " nmap <Leader>r :w<CR>:!python %<CR>
    
    " run black format
    " nmap <Leader>b :w<CR>:!black %<CR>:e<CR>
    
    " toggle nerdtree
    nmap <Leader>e :NERDTreeToggle<CR>
    
    " FZF
    nnoremap <C-p> :call FzfOmniFiles()<CR>
    fun! FzfOmniFiles()
      let is_git = system('git status')
      if v:shell_error
        :Files
      else
        :GitFiles
      endif
    endfun
    
    " Zen mode
    nmap <Leader>z :Goyo<CR>
    
    " List buffers
    nmap <Leader>b :Buffers<CR>
    " NVIM CONFIG
    " ----------------------------
else
    " VSCODE CONFIG
    " ----------------------------

    " vim-plug{{{
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }
    call plug#end()
    " }}}

    function! s:openWhichKeyInVisualMode()
        normal! gv
        let visualmode = visualmode()
        if visualmode == "V"
            let startLine = line("v")
            let endLine = line(".")
            call VSCodeNotifyRange("whichkey.show", startLine, endLine, 1)
        else
            let startPos = getpos("v")
            let endPos = getpos(".")
            call VSCodeNotifyRangePos("whichkey.show", startPos[1], endPos[1], startPos[2], endPos[2], 1)
        endif
    endfunction

    " Calva clojure
    " nmap cqp :call VSCodeNotify('calva.jackIn')<CR>
    " nmap cqq :call VSCodeNotify('calva.disconnect')<CR>
    " nmap cpr :call VSCodeNotify('calva.loadFile')<CR>
    " nmap cpR :call VSCodeNotify('calva.loadNamespace')<CR>
    " nmap cpp :call VSCodeNotify('calva.evaluateSelection')<CR>
    " nmap cqc :call VSCodeNotify('calva.evalCurrentFormInREPLWindow')<CR>

    " Better Navigation
    nmap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
    xmap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
    nmap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
    xmap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
    nmap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
    xmap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
    nmap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
    xmap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

    nmap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
    xmap <silent> <Space> :<C-u>call <SID>openWhichKeyInVisualMode()<CR>
    
    " Simulate same TAB behavior in VSCode
    nmap <Tab> :Tabnext<CR>
    nmap <S-Tab> :Tabprev<CR>

    nmap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
    " VSCODE CONFIG
    " ----------------------------
endif
