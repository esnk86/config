function c {
    clear
}

function s {
    ls -1 "$@"
}

function cs {
    if [[ -n "$1" ]]; then cd "$1"; fi
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
export LC_CTYPE=en_US.UTF-8
export PS1="\u@\H:\w\$ "

alias el=elixir
alias lua=lua53
alias vi=vim
