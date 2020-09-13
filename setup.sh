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
git clone git@liuxueyang-gitee:liuxueyang/oh-my-tmux.git ~/.tmux
cd
ln -s .tmux/.tmux.conf

cd ~/fun/setup
cp -i .tmux.conf.local ~/

# emacs
cd ~/fun/setup
cp -i .emacs-custom.el ~/.emacs-custom.el
git clone git@liuxueyang-gitee:liuxueyang/plis-emacs.d.git emacs.d
mv emacs.d ~/.emacs.d

# Go
go env -w GOPROXY="https://goproxy.io,https://goproxy.cn,direct"
go env -w GO111MODULE="on"

go get github.com/go/golang/x/tools/cmd/goimports
go get github.com/golang/go/x/tools/...
go get github.com/kisielk/errcheck
go get github.com/rogpeppe/godef
go get github.com/stamblerre/gocode
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/gopls@latest

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo 'export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup' >> ~/.bash_profile
echo 'set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup' >> ~/.config/fish/config.fish

rustup toolchain add nightly
rustup component add rust-src
rustup default nightly
cargo +nightly install racer

# Python
pip install --upgrade pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

sudo pip install --upgrade pip
sudo pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

echo "Cheers!\n\nBye!\n"
