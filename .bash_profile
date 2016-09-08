## nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

## variables
PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"

## EXPORT
export PATH=/usr/local/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

## Hide machine name
PS1="\W $"

## vim aliases
alias vi='env LANG=en_US.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

## Git Commands
alias gl='git log --graph --decorate --oneline'
alias ga='git add -p'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'

alias gpom='git push origin master'  ## wow

## Change Dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'
