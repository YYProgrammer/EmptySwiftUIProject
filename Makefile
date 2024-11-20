#
# make help
#


SHELL := /bin/bash
HIDE ?= @

export HOMEBREW_NO_AUTO_UPDATE=true
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

gen:
	$(HIDE)xcodegen generate