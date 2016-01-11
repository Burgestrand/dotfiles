all: brew fresh vim

brew := /usr/local/bin/brew
$(brew): 
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew: $(brew)
	brew bundle

fresh := $(HOME)/.bin/fresh
$(HOME)/.freshrc:
	ln -sf $(CURDIR)/freshrc $(HOME)/.freshrc
$(fresh): export FRESH_BIN_PATH := ${dir $(fresh)}
$(fresh): $(HOME)/.freshrc
	mkdir ~/.fresh/
	git clone https://github.com/freshshell/fresh ~/.fresh/source/freshshell/fresh
	~/.fresh/source/freshshell/fresh/bin/fresh
fresh: $(fresh)
	$(fresh)
