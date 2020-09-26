source "$HOME/.zsh/aliases"

# Fresh shell tools.
path+=~/.bin
source "$HOME/.fresh/build/shell.sh"

. /usr/local/opt/asdf/asdf.sh

source "$HOME/.zsh/autocompletion"
source "$HOME/.zsh/prompt"
source "$HOME/.zsh/history"
source "$HOME/.zsh/iterm2"
source "$HOME/.zsh/yarn"

# Default editor.
export EDITOR=nvim

# Keybinds! Vim mode!
bindkey -v
export KEYTIMEOUT=1

bindkey "^R" history-incremental-search-backward
