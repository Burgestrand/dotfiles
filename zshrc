source $HOME/.shell/aliases

# Git CLI prompt.
GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "[\[\033[32m\]\w\[\033[0m\]]" "\\\$ "'

# Fresh shell tools.
path+=~/.bin
source "$HOME/.fresh/build/shell.sh"

# Homebrew auto completion.
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Enable autocompletion.
autoload -Uz compinit
compinit

# RBENV!
eval "$(rbenv init --no-rehash - zsh)"
