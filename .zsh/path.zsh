#!/bin/zsh

# Antibody
if [ "$(uname -s)" = "Darwin" ]; then
  source "$(brew --prefix)/share/antibody.zsh"
else
  source "$HOME/.antibody/antibody/antibody.zsh"
fi

# rbenv
if ! [ "$(uname -s)" = "Darwin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi
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
if ! [ "$(uname -s)" = "Darwin" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
fi
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

# pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

# GO
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

# Composer
export PATH=$PATH:$HOME/.composer/vendor/bin

# Autoenv
if [ "$(uname -s)" = "Darwin" ]; then
  source /usr/local/opt/autoenv/activate.sh
fi

# iTerm 2
if [ "$(uname -s)" = "Darwin" ]; then
  test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
fi
