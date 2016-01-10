[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=~/.bin/:$PATH

export FRESH_BIN_PATH=~/.bin
source "$HOME/.fresh/build/shell.sh"

source $(brew --prefix)/etc/bash_completion
eval "$(docker-machine env default 2>/dev/null)"
eval "$(rbenv init -)"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

function trash() {
  mv $1 ~/.Trash
}
