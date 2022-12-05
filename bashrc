function c {
    clear
}

function s {
    ls -1 --group-directories-first "$@"
}

function cs {
    if [[ "$1" ]]; then cd "$1"; fi
    c
    s
}

function ch {
    cs ~
}

function t {
    tar cvzf "$1.$(date +%y%m%d.%H%M%S).tar.gz" "$1"
}

set -o vi

export CARGO_TARGET_DIR="$HOME/cargo"
export EDITOR=vim
export HISTFILE=
export MANWIDTH=80

alias el=elixir
alias vi=vim
