# ~/.bash_profile

## variables
PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"

## EXPORT
export PATH=/usr/local/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

## pyenv
export PYENV ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

## Hide machine name
PS1="\W $"

## .bashrc
if [ -f /etc/bashrc ]; then
  . ~/dotfiles/.bashrc
fi

## shell script
export PATH=$PATH:/Users/kiyomasa/dotfiles/bin/sh
