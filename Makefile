all: brew fresh

brew := /usr/local/bin/brew
$(brew): 
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew: $(brew)
	brew bundle

fresh := $(HOME)/bin/fresh
$(HOME)/.freshrc: .freshrc
	ln -s $(abspath $(notdir $@)) $@
$(fresh): | $(HOME)/.freshrc
	bash -c "`curl -sL get.freshshell.com`"
fresh: $(fresh)
	$(HOME)/bin/fresh
