source "$HOME/.zsh/aliases"

# Fresh shell tools.
path+=~/.bin
source "$HOME/.fresh/build/shell.sh"

# Homebrew auto completion.
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# RBENV!
eval "$(rbenv init --no-rehash - zsh)"

# Enable zsh stuff, this is autocompletion.
autoload -Uz compinit
compinit

# … and this is prompt!
fpath+=("$HOME/.zsh/pure")
autoload -Uz promptinit
promptinit
prompt pure

# Enable vi mode for line editing.
bindkey -v
export KEYTIMEOUT=1

bindkey "^R" history-incremental-search-backward