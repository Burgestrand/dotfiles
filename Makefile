all: brew fresh projects defaults

brew := /usr/local/bin/brew
$(brew):
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
brew: $(brew)
	brew bundle
	sudo chown -R $$(whoami):admin /usr/local/share/zsh
	sudo chmod -R 0755 /usr/local/share/zsh

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
fresh: $(fresh) pure

projects := $(HOME)/Projects
$(projects):
	mkdir $(projects)
projects: $(projects)

pure := zsh/pure
$(pure):
	git subtree pull --prefix "$(pure)" https://github.com/sindresorhus/pure.git main --squash
pure: $(pure)
.PHONY: $(pure)

defaults:
	defaults write -g NSAutomaticCapitalizationEnabled -bool false
	defaults write -g InitialKeyRepeat -int 15
	defaults write -g KeyRepeat -int 2
	defaults write -g NSAutomaticCapitalizationEnabled -bool false
	defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
	defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
	defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
	defaults write -g NSAutomaticTextCompletionEnabled -bool true
	defaults write com.apple.dock autohide YES

.PHONY: defaults
