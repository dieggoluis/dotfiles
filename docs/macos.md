# [WIP] MacOS Setup

## Terminal
```
brew cask install iterm2
```

## Keyboard remapping
```
brew install --cask karabiner-elements
```

## Sync config files
```
brew install stow
```

## GPG key
```
brew install gnupg

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

## ZSH tooling
```
brew install antigen
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Search tooling
```
brew install rg
brew install fd

brew install fzf
$(brew --prefix)/opt/fzf/install
```

## Terminal file manager
```
brew install vifm
```

## Tmux
```
brew install tmux
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

## Java
```
brew install java11
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

brew install jenv
jenv doctor
jenv add /Library/Java/JavaVirtualMachines/<version>/Contents/Home
```

## Firefox driver
```
brew install geckodriver
```

## Smart CD
```
brew install zoxide
```

## Cheatset
```
brew install cheat
```

