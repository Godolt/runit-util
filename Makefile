PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install runit-util.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p runit-util $(DESTDIR)$(PREFIX)/bin/runit-util
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/runit-util

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/runit-util
