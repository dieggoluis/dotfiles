# antigen
source $HOME/.config/antigen/antigen.zsh
antigen init $HOME/.antigenrc

# ohmyzsh
export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# include additional path {
export PATH="$PATH:/usr/local/sbin:$HOME/.local/bin"
# }

# langs {
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# }

# gpg {
GPG_TTY=$(tty)
export GPG_TTY
# }

# default editor {
export EDITOR='nvim'
export NVIMRC=~/.config/nvim/init.vim
# }

# aliases {
alias zshconfig="nvim ~/.zshrc"
alias zshr="source ~/.zshrc"
alias vim="nvim"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
# }

# fzf {
# ignore history duplicates
setopt HIST_IGNORE_ALL_DUPS
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
# }

# completion wrapper for git {
fpath=($HOME/.zsh $fpath)
# }

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pya() {
    pyenv activate $1
}

pyd() {
    pyenv deactivate
}
