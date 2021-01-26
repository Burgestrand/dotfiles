all: brew pure fresh

brew := /usr/local/bin/brew
$(brew):
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
brew: $(brew)
	brew bundle

fresh := $(HOME)/.bin/fresh
$(HOME)/.freshrc:
	ln -sf $(CURDIR)/freshrc $(HOME)/.freshrc
$(HOME)/.fresh/:
	mkdir -p ~/.fresh/
	git clone https://github.com/freshshell/fresh ~/.fresh/source/freshshell/fresh
$(fresh): export FRESH_BIN_PATH := ${dir $(fresh)}
$(fresh): $(HOME)/.fresh/ $(HOME)/.freshrc
	cd ~/.fresh/source/freshshell/fresh && git pull
	~/.fresh/source/freshshell/fresh/bin/fresh
fresh: $(fresh)

pure := zsh/pure
$(pure):
	git subtree pull --prefix "$(pure)" https://github.com/sindresorhus/pure.git main --squash
pure: $(pure)
.PHONY: $(pure)
.PHONY: pure-fix
