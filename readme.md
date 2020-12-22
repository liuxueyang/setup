How to setup a simple working environment quickly.

# SSH config
copy ssh public key and private key to `~/.ssh/`

~/.ssh/config file:
```config
Host liuxueyang-gitee
     HostName gitee.com
     User git
     IdentityFile ~/.ssh/gitee_liuxueyang
```

config user email and name:

```config
git config --global user.email "liuxueyang457@gmail.com"
git config --global user.name "liuxueyang"
```

# Clone repository
```sh
mkdir ~/fun/
cd ~/fun/
git clone git@liuxueyang-gitee:liuxueyang/setup.git
cd setup

git config --local user.email "liuxueyang457@gmail.com"
git config --local user.name "liuxueyang"
```

# XTerm

minimal xterm configuration

```
cd ~/fun/setup
cat simple-xterm-config >> ~/.Xresources
xrdb -merge ~/.Xresources
```

# Xresources

**TODO**
```sh
cd ~/fun/setup
cp -i .Xresources ~/
```

# Tmux
oh my tmux
```sh
git clone git@liuxueyang-gitee:liuxueyang/oh-my-tmux.git ~/.tmux
cd
ln -s .tmux/.tmux.conf

cd ~/fun/setup
cp -i .tmux.conf.local ~/
```

# Emacs
```sh
touch ~/.emacs-custom.el

git clone git@liuxueyang-gitee:liuxueyang/plis-emacs.d.git emacs.d

mv emacs.d ~/.emacs.d
```

# Eclipse

[Eclipse Installer](https://www.eclipse.org/downloads/packages/)

# Programming Language Development Environments

## Go

1. Install a new version.
2. configure proxy and turn on go mod:
```sh
go env -w GOPROXY="https://goproxy.io,https://goproxy.cn,direct"
go env -w GO111MODULE="on"
```
3. install go tools (eg. language server):
```sh
go get github.com/go/golang/x/tools/cmd/goimports
go get github.com/golang/go/x/tools/...
go get github.com/kisielk/errcheck
go get github.com/rogpeppe/godef
go get github.com/stamblerre/gocode
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/gopls
```

## Rust
1. Install rustup
2. Use tuna mirror:

bash:
```sh
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo 'export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup' >> ~/.bash_profile
cd ~/fun/setup/
bash rust.sh
```

fish config:
```fish
echo 'set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup' >> ~/.config/fish/config.fish
echo "set -x fish_user_paths $fish_user_paths $HOME/.cargo/bin" >> ~/.config/fish/config.fish
```

3. Install rust tools (eg. language server):
```sh
rustup toolchain add nightly
rustup component add rust-src
rustup default nightly
cargo +nightly install racer
```

## Python
1. Install Python3
2. Use tuna pip mirror:
```sh
pip install --upgrade pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

sudo pip install --upgrade pip
sudo pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

# Projects

## apue

```sh
cd ~/fun/
git clone git@liuxueyang-gitee:liuxueyang/apue.git
```

## gopl

```sh
mkdir -p ~/go/src/gitee.com/liuxueyang/
cd ~/go/src/gitee.com/liuxueyang/
git clone git@liuxueyang-gitee:liuxueyang/gopl.git
```

## Personal blog

```sh
mkdir -p ~/public_html
git clone git@liuxueyang-gitee:liuxueyang/liuxueyang.git ~/public_html
```

## A little Java

```sh
cd ~/fun/
git clone git@liuxueyang-gitee:liuxueyang/little-java.git
```

# RCM

[Guide](https://www.distrotube.com/blog/rcm-guide/)

1. bootstrap
```sh
cp new/rcrc ~/.rcrc
```
2. install rcm
3. install dot files
```
rcup -v
```
