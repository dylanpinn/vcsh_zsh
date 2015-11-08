#!/bin/sh
__reload_dotfiles() {
  PATH="$(command -p getconf PATH):/usr/local/bin"
  . ~/.zshrc
  cd ... || exit
}
alias reload!='__reload_dotfiles'

# Syntax highlighting colorzing cat
alias dog='pygmentize -g'
