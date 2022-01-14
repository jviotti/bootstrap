.PHONY: all lint test
.DEFAULT_GOAL = all

all: lint test

lint: bootstrap
	shellcheck $^

test: bootstrap
	exec ./$< $@
