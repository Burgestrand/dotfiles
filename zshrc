source "$HOME/.zsh/aliases"

# Fresh shell tools.
path+=~/.bin
source "$HOME/.fresh/build/shell.sh"

source "$HOME/.zsh/nvm"
source "$HOME/.zsh/rbenv"

source "$HOME/.zsh/autocompletion"
source "$HOME/.zsh/prompt"
source "$HOME/.zsh/history"

# Keybinds! Vim mode!
bindkey -v
export KEYTIMEOUT=1

bindkey "^R" history-incremental-search-backward
