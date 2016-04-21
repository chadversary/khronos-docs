pkgname := khronos-docs

DESTDIR ?=
prefix ?= /usr/local
exec_prefix ?= $(prefix)
bindir ?= $(exec_prefix)/bin
datarootdir ?= $(prefix)/share
docdir ?= $(datarootdir)/doc/$(pkgname)

.PHONY: all
all:
	@

.PHONY: install
install:
	install -Dm755 bin/khronos-mirror-docs $(DESTDIR)/$(bindir)/khronos-mirror-docs
	install -Dm644 README.txt $(DESTDIR)/$(docdir)/README.txt

.PHONY: clean
clean:
	@
