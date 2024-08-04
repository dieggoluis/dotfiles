# oh-my-zsh path
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# antigen path
# source $(brew --prefix)/share/antigen/antigen.zsh
source $HOME/.config/antigen/antigen.zsh

export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

antigen use oh-my-zsh

antigen bundle vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle dzervas/fzf-command-bookmarks
#antigen bundle urbainvaes/fzf-marks
antigen bundle Aloxaf/fzf-tab
antigen bundle lukechilds/zsh-nvm
antigen bundle mroth/evalcache

antigen theme refined

antigen apply

# nvim
export EDITOR="nvim"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias vimdiff='nvim -d'
alias g="git"

# safe remove
alias rm='rm -i'

# easy edit configs
alias zshconf="nvim ~/.zshrc"
alias tmuxconf="nvim ~/.tmux.conf"

alias uuidgen='uuidgen | tr A-F a-f'
alias fdate='date "+%Y-%m-%dT%H:%M:%SZ"'

# python managed by pyenv and homebrew do not live well together
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# recommended by brew doctor
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# gpg
export GPG_TTY=$(tty)
export PINENTRY_USER_DATA="USE_CURSES=1"

# pyenv
_evalcache pyenv init --path

# fzf
_gen_fzf_opts() {
    local color00='#002b36'
    local color01='#073642'
    local color02='#586e75'
    local color03='#657b83'
    local color04='#839496'
    local color05='#93a1a1'
    local color06='#eee8d5'
    local color07='#fdf6e3'
    local color08='#dc322f'
    local color09='#cb4b16'
    local color0A='#b58900'
    local color0B='#859900'
    local color0C='#2aa198'
    local color0D='#268bd2'
    local color0E='#6c71c4'
    local color0F='#d33682'
    
    export FZF_DEFAULT_OPTS="
        --color bg+:-1,bg:-1,spinner:$color0C,hl:$color0D
        --color fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
        --color marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
        --extended"

    #export FZF_TMUX_OPTS="
        #-p --no-info --ansi 
        #--color gutter:-1,bg+:-1,header:4,separator:0,info:0,label:4,border:4,prompt:7,pointer:5,query:7,prompt:7"

    setopt HIST_IGNORE_ALL_DUPS
    if type rg &> /dev/null; then
      #export FZF_DEFAULT_COMMAND='fd --type file'
      export FZF_CTRL_T_COMMAND='fd --type file'
      export FZF_ALT_C_COMMAND='fd --type directory'
    fi
}
_gen_fzf_opts
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# java
export PATH="$HOME/.jenv/bin:$PATH"
_evalcache jenv init -

# zoxide
_evalcache zoxide init zsh

# Clojure repl
export LEIN_USE_BOOTCLASSPATH=no

# ruby gem
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# work specific configs
[ -f $HOME/.workrc ] && source $HOME/.workrc
