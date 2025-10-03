GAME ?= g1

.PHONY: love watch fmt lint test precommit setup

love:
	@scripts/love games/$(GAME)

watch:
	@scripts/love games/$(GAME) --watch

fmt:
	@stylua .

lint:
	@luacheck .

test:
	@busted -o utfTerminal

precommit: fmt lint test

setup:
	@echo "Install tools per README, then:"
	@echo "git config core.hooksPath .githooks"
