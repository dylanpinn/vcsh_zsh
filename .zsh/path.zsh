#!/bin/zsh

# Antibody
if [ "$(uname -s)" = "Darwin" ]; then
  source "$(brew --prefix)/share/antibody.zsh"
else
  source "$HOME/.antibody/antibody/antibody.zsh"
fi

# rbenv
if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi

# nvm
export NVM_DIR=~/.nvm
if [ "$(uname -s)" = "Darwin" ]; then
  source $(brew --prefix nvm)/nvm.sh
else
  source "$HOME/.nvm/nvm.sh"
fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# GO
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

# Composer
export PATH=$PATH:$HOME/.composer/vendor/bin
