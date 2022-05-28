# [WIP] MacOS Setup

## Stow
```
brew install stow
```

## GPG key
```
brew install gnupg
```
### Generate gpg keys
```
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <key>
```

## SSH key
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

## Git
```
git config --global gpg.program <gpg>
git config --global user.signingkey <key>
git config --global user.name "User Name"
git config --global user.email "User Email"
```

## Neovim
```
brew install --HEAD neovim
```

## ZSH
```
brew install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```
      
## FZF
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Vifm
```
brew install vifm
```

## Iterm2
```
brew cask install iterm2
```

## Karabiner
```
brew install --cask karabiner-elements
```

## Tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Better git diff
```
brew install git-delta
```
## Fonts
```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

## Pyenv
```
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
```

## Jenv
