#!/bin/zsh

# Load config files
typeset -U config_files
config_files=($HOME/.zsh/*.zsh)

# load the path file
for file in ${(M)config_files:#*/path.zsh}; do
  source "$file"
done

# setup antibody
antibody bundle < "$HOME/.antibody/plugins.txt"

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}; do
  source "$file"
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit && compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}; do
  source "$file"
done

unset config_files
