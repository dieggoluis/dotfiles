export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:$PATH"

# langs
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# gpg
GPG_TTY=$(tty)
export GPG_TTY

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

# conda autocomplete {{{
# fpath+=${HOME}/.conda-zsh-completion/
# compinit
# }}}

# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_222)
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(${HOME}'/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "${HOME}/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "${HOME}/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="${HOME}/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
