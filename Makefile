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
	$(HIDE)pod install

fix:
	$(HIDE)./scripts/swiftformat/swiftformat . --swiftversion 5 --exclude Pods
	$(HIDE)./scripts/swiftlint/swiftlint --fix
	$(HIDE)./scripts/swiftlint/swiftlint --strict > /var/tmp/swiftlint-strict.log
	$(HIDE)./scripts/check-strict.sh