# oh-my-zsh path
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# antigen path
source $HOME/.config/antigen/antigen.zsh

export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
#export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

# load bundles from the default repo (oh-my-zsh).
antigen bundle vi-mode

# load bundles from external repos.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle dzervas/fzf-command-bookmarks
antigen bundle urbainvaes/fzf-marks
antigen bundle Aloxaf/fzf-tab
antigen bundle lukechilds/zsh-nvm
antigen bundle mroth/evalcache
antigen theme refined

antigen apply

# nvim
export EDITOR="nvim"
export NVIMRC="~/.config/nvim/init.vim"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias vimdiff='nvim -d'

# safe remove
alias rm='rm -i'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# easy edit configs
alias zshconf="nvim ~/.zshrc"
alias tmuxconf="nvim ~/.tmux.conf"
alias vimconf="nvim ~/.config/nvim/init.vim"

# python managed by pyenv and homebrew do not live well together
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# gpg
export GPG_TTY=$(tty)
export PINENTRY_USER_DATA="USE_CURSES=1"

# pyenv
_evalcache pyenv init --path

# fzf
_gen_fzf_default_opts() {
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

}
_gen_fzf_default_opts

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
setopt HIST_IGNORE_ALL_DUPS
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type file'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# java
eval export PATH="${HOME}/.jenv/shims:${PATH}"
export JENV_SHELL=zsh
export JENV_LOADED=1
unset JAVA_HOME
source '/usr/local/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
jenv rehash 2>/dev/null
jenv refresh-plugins
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}

# Clojure repl
export LEIN_USE_BOOTCLASSPATH=no

# work specific configs
[ -f $HOME/.workrc ] && source $HOME/.workrc
