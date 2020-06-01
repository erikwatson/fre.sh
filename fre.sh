#!/bin/sh

# Install Docker
## Install Docker Requirements
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

## Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## Set up the Stable Repo for Docker
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

## Install Docker Engine
apt-get install docker-ce docker-ce-cli containerd.io -y


# Install oter Programs
apt-get install vim git zsh htop -y

# Install Fonts
apt-get install fonts-hack-ttf -y

# Set up ZSH
## Set the default shell to zsh
chsh -s $(which zsh)

## Base16 Shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

## zshrc
git clone https://github.com/erikwatson/zshrc ~/zshrc
rm ~/.zshrc
ln -s ~/zshrc/.zshrc ~/.zshrc

# Set up Vim
## vimrc
git clone https://github.com/erikwatson/vimrc ~/vimrc
rm ~/.vimrc
ln -s ~/vimrc/.vimrc ~/.vimrc

## Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall