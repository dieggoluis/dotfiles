# antigen
source $HOME/.config/antigen/antigen.zsh

# Load oh-my-zsh library.
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle vi-mode
antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
antigen bundle poetry

# Load bundles from external repos.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Select theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply

# include additional path {
export PATH="$PATH:/usr/local/sbin:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin"
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
alias vimconfig="nvim ~/.config/nvim/init.vim"
alias zshr="source ~/.zshrc"
alias vim="nvim"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias rm='rm -i'
# }

# fzf {
# ignore history duplicates
setopt HIST_IGNORE_ALL_DUPS
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
# }

# Tilix terminal emulator
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# completion wrapper for git {
# fpath=($HOME/.zsh $fpath)
# }

# pyenv
export PATH="${HOME}/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pya() {
    pyenv activate $1
}

pyd() {
    pyenv deactivate
}

# linux only
xcape -e 'Control_L=Escape'

source $HOME/.gitlab
source $HOME/.github
source $HOME/.nexus
source $HOME/.packagecloud

# poetry
export PATH="$HOME/.poetry/bin:$PATH"
