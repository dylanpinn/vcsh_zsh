#!/bin/zsh

# Antibody (OSX)
source "$(brew --prefix)/share/antibody.zsh"

# rbenv
if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# GO
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
