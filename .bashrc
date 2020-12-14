# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

source "$HOME/.cargo/env"

# elegant emacs
export elegant_emacs_path="$HOME/fun/elegant-emacs/"
alias elegant_emacs="$(which emacs) -q -l ${elegant_emacs_path}/sanity.el -l ${elegant_emacs_path}/elegance.el &"

# nano emacs
export nano_emacs="$HOME/fun/nano-emacs"
alias nano_emacs="$(which emacs) -q -l ${nano_emacs}/nano.el -dark &"

# doom-emacs
# in a more simple way
alias doom_emacs="export HOME=$HOME/fun/doom-emacs/ && emacs &"

# prelude emacs
alias prelude_emacs="export HOME=$HOME/fun/prelude && emacs &"

# graphene emacs
alias graphene_emacs="export HOME=$HOME/fun/graphene && emacs &"

# emacs-live
alias emacs_live="export HOME=$HOME/fun/emacs-live && emacs &"

# purcell emacs
alias purcell_emacs="export HOME=$HOME/fun/purcell && emacs &"

# algouage emacs
alias algouage_emacs="export HOME=$HOME/fun/emacs.d && emacs &"

export EDITOR=emacs

# fix trojan bug
trojan_config="$HOME/.config/trojan-qt5/config.ini"
if [ -f $trojan_config ]; then
    rm $trojan_config
fi

if [ -x /usr/bin/fortune ] ; then
   echo
   /usr/bin/fortune
   echo
fi
