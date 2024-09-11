PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Neofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p quickfetch $(DESTDIR)$(PREFIX)/bin/quickfetch
	@cp -p neofetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/quickfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/quickfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/neofetch.1*
