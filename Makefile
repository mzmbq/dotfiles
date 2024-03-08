.PHONY: all
all: build install

.PHONY: build
build:
	zsh ./build.sh

.PHONY: install
install:
	zsh ./install.sh