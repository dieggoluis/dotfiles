sudo apt-get update
sudo apt upgrade

sudo apt install stow
sudo apt install wget

# gpg key
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <key>

#ssh key
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# git
sudo apt install git
git config --global gpg.program <gpg>
git config --global user.signingkey <key>
git config --global user.name "Diego de Souza"
git config --global user.email "dieggoluis@gmail.com"

# vim
sudo apt install neovim

# zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb

# spotify
sudo apt install curl
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# zsh
sudo apt install zsh
sudo apt install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh

# slack
# go to https://slack.com/downloads/linux
sudo apt install ./slack-desktop-*.deb

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#anaconda
# go to https://www.anaconda.com/distribution/#download-section
bash ./Anaconda3-2020.02-Linux-x86_64.sh
git clone git@github.com:esc/conda-zsh-completion.git ${HOME}/.conda-zsh-completion

# pycharm 
# go to https://www.jetbrains.com/pycharm/download/#section=linux

#neovim 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# most recent version get app.image

https://github.com/morhetz/gruvbox-contrib/tree/master/xfce4-terminal

# docker 
https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce

# mac specifique
karabiner
iterm2

# qmk_firmware for flash keyboards

# file managers
ranger
vifm
nnn

# vpn
nordvpn

# fonts
https://github.com/powerline/fonts/tree/master/SourceCodePro
