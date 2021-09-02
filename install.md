# Update
## Linux
```
sudo apt-get update
sudo apt upgrade
```

# Stow
Linux
```
sudo apt install stow
```
MacOS
```
brew install stow
```

# GPG key
MacOS
```
brew install gnupg
```
```
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <key>
```

# SSH key
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

# Git
```
sudo apt install git
git config --global gpg.program <gpg>
git config --global user.signingkey <key>
git config --global user.name "Diego de Souza"
git config --global user.email "dieggoluis@gmail.com"
```

# Neovim
## MacOS
```
brew install neovim
```
## From package manager
```
sudo apt install neovim
```
## Nightly version
```
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage > /tmp/nvim.appimage
sudo mv /tmp/nvim.appimage /usr/local/bin/nvim
chmod +x /usr/local/nvim
```
## Plug manager
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## COC plugin requirements
Linux
 
```
sudo apt install nodejs
```
MacOS
```
brew install node
```

# Zoom
Linux
```
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb
sudo apt install zoom
```

# spotify
Linux
```
sudo apt install curl
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
```

# ZSH
Linux
```
sudo apt install zsh
sudo apt install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
```
      
# Slack
For linux, go to https://slack.com/downloads/linux
```
sudo apt install ./slack-desktop-*.deb
sudo apt install slack-desktop
```

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Docker 
Linux
```
https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce
sudo apt install docker-ce
sudo apt install docker-ce-cli
```

# qmk_firmware for flash keyboards
https://github.com/qmk/qmk_firmware

# File manager
```
sudo apt install vifm
```

# Nordvpn
```
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
nordvpn login
```

# Mac apps
- karabiner
- iterm2

# Pyenv
```
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
```

# Tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
