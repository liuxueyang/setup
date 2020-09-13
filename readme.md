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

# Clone repository
```sh
mkdir ~/fun/
cd ~/fun/
git clone git@liuxueyang-gitee:liuxueyang/setup.git
cd setup
git config --global user.email "liuxueyang457@gmail.com"
git config --global user.name "liuxueyang"
```

# Xterm, URxvt
```sh
cd ~/fun/setup
cp -i .Xresources ~/
```

# Tmux
oh my tmux
```sh
cd ~/fun/setup
cp -i .tmux.conf.local ~/
```

# Emacs
```sh
git clone git@liuxueyang-gitee:liuxueyang/plis-emacs.d.git emacs.d
```

# Programming Language Development Environments

## Go

1. Install a new version.
2. configure proxy and turn on go mod:
```sh

```
3. install go tools (eg. language server):
```sh

```

## Rust
1. Install rustup
2. Use tuna mirror:
```sh

```
3. Install rust tools (eg. language server):
```sh

```

## Python
1. Install Python3
2. Use tuna pip mirror:
```sh

```
