# Common
set -x EDITOR nvim
set -x PATH $HOME/bin $PATH

# Commands
## gnu
set -x PATH $HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin $PATH
set -x PATH $HOMEBREW_PREFIX/opt/findutils/libexec/gnubin $PATH
set -x PATH $HOMEBREW_PREFIX/opt/gawk/libexec/gnubin $PATH
set -x PATH $HOMEBREW_PREFIX/opt/grep/libexec/gnubin $PATH
set -x PATH $HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin $PATH
set -x PATH $HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin $PATH

set -x MANPATH $HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman $MANPATH
set -x MANPATH $HOMEBREW_PREFIX/opt/findutils/libexec/gnuman $MANPATH
set -x MANPATH $HOMEBREW_PREFIX/opt/gawk/libexec/gnuman $MANPATH
set -x MANPATH $HOMEBREW_PREFIX/opt/grep/libexec/gnuman $MANPATH
set -x MANPATH $HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnuman $MANPATH
set -x MANPATH $HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnuman $MANPATH

## openssl
set -x PATH $HOMEBREW_PREFIX/opt/openssl/bin $PATH

## diff
alias diff=colordiff

## ls
alias ls='ls -hFG'
alias la='ls -A'
alias ll='ls -lA'

## tig
alias tig='tig --all'

## ghq
set -x GHQ_ROOT $HOME/.ghq
set -x GHQ_SELECTOR peco

## asdf
source $GHQ_ROOT/github.com/asdf-vm/asdf/asdf.fish
source $GHQ_ROOT/github.com/asdf-vm/asdf/completions/asdf.fish

source $HOME/.asdf/plugins/java/set-java-home.fish

## embulk
alias embulk=$HOME/.embulk/bin/embulk

## gcloud
source $HOME/google-cloud-sdk/path.fish.inc

# terraform
set -x TF_PLUGIN_CACHE_DIR $HOME/.terraform.d/plugin-cache

# uconv
set -x PATH $HOMEBREW_CELLAR/icu4c/69.1/bin $PATH

# xcodes
set -x XCODES_DIRECTORY $HOME/Applications

# Run tmux
if test -z "$TMUX"
    set -x TERM xterm-256color
    exec tmux
end
