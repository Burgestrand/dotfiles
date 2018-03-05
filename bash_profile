[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export VISUAL=vim
export EDITOR="$VISUAL"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoreboth:erasedups

export PATH="~/.bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" # brew coreutils
GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "[\[\033[32m\]\w\[\033[0m\]]" "\\\$ "'

export FRESH_BIN_PATH=~/.bin
source "$HOME/.fresh/build/shell.sh"

source $(brew --prefix)/etc/bash_completion
eval "$(rbenv init -)"

# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

source $HOME/.bash/aliases
source $HOME/.bash/functions
