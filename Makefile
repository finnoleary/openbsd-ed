#	$OpenBSD: Makefile,v 1.12 2018/06/15 08:46:24 martijn Exp $

PREFIX=  /usr/local
PROG=	 ed
SRCS=	 bsdcompat.c buf.c glbl.c io.c main.c re.c sub.c undo.c

build:
	gcc $(SRCS) -o $(PROG) -lpcre2-posix -lpcre2-8

install: build
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 755 ed $(DESTDIR)$(PREFIX)/bin/ed

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/ed

clean:
	rm ed
