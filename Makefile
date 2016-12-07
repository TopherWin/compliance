# vim: set ts=8 sw=8 ai noet:

.PHONY: all
all: runtime

.PHONY: check
check:
	# for py check

.PHONY: clean
clean:
	script/clean

.PHONY: runtime
runtime:
	script/build

.PHONY: test
test:
	bats script/test_*.bats
