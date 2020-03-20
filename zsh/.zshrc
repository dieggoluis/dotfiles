export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="shades-of-purple"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# User configuration

# langs
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# editor
export EDITOR='nvim'
export NVIMRC=~/.config/nvim/init.vim

# make faster vi-mode mode switching
export KEYTIMEOUT=1

# aliases{{{
alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.vimrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias zshr="source ~/.zshrc"
alias vim="nvim"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
# }}}

# fzf{{{
# ignore history duplicates
setopt HIST_IGNORE_ALL_DUPS
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# }}}

# completion wrapper for git{{{
fpath+=${HOME}/.zsh
# }}}

# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# conda autocomplete {{{
fpath+=${HOME}/.conda-zsh-completion/
compinit
# }}}

# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_222)
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
