#! /bin/sh

rm ~/.bashrc
ln -s ~/.dotfiles/bashrc ~/.bashrc

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim

mkdir ~/.ssh
cat ~/.dotfiles/ssh/authorized_keys >> ~/.ssh/authorized_keys
