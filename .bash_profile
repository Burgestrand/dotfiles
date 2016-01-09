[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -f "$HOME/.fresh/build/shell.sh" ]] && source "$HOME/.fresh/build/shell.sh"

[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion

eval "$(docker-machine env default 2>/dev/null)"
eval "$(rbenv init -)"

if [ -f $(brew --prefix nvm)/nvm.sh ]; then
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
fi

function trash() {
  mv $1 ~/.Trash
}
