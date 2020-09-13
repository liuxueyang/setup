#!/usr/bin/env bash


cat ssh_config >> ~/.ssh/config

# configure repository
mkdir ~/fun/
cd ~/fun/
git clone git@liuxueyang-gitee:liuxueyang/setup.git
cd setup
git config --global user.email "liuxueyang457@gmail.com"
git config --global user.name "liuxueyang"

# xterm
cd ~/fun/setup
cp -i .Xresources ~/

# Tmux
cd ~/fun/setup
cp -i .tmux.conf.local ~/

# emacs
git clone git@liuxueyang-gitee:liuxueyang/plis-emacs.d.git emacs.d
