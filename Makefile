all: brew fresh

brew := /usr/local/bin/brew
$(brew): 
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
