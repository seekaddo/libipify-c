##
## @file Makefile
##
##
## @author Dennis Addo ic16b026@technikum-wien.at
## @date 27/11/2017.
##
## @version 1.0 $
##
##
## URL: $HeadURL: https://github.com/seekaddo/libipify-c$
##
## Last Modified: $Author: Dennis $
##

##
## ------------------------------------------------------------- variables --
##


CC=gcc
CFLAGS=-DDEBUG -Wall -pedantic -Werror -Wextra -Wstrict-prototypes \
		-Wwrite-strings -fno-common -g -O3 -std=gnu11
CP=cp
CD=cd
MV=mv
GREP=grep
DOXYGEN=doxygen
OBJECTS1=ipify.o



EXCLUDE_PATTERN=footrulewidth

##
## ----------------------------------------------------------------- rules --
##


%.o: %.c
	$(CC) $(CFLAGS) -c $<

##
## --------------------------------------------------------------- targets --
##

.PHONY: all libipify
.DEFAULT_GAOL	:=all
all: ipify

ipify:$(OBJECTS1)
	$(CC) client_test.c $^ -o $@
build:$(OBJECTS1)
	ar -cvq ipify.a $^


.SILENT: clean
.PHONY: clean  testall


test:
	./ipify


install:
	make build
	sudo cp ipify.h /usr/local/include
	sudo cp ipify.a /usr/local/lib

clean:
	$(RM) *.o *.d *~ *.o *.a ipify

.PHONY: distclean

distclean: clean
	$(RM) -r doc

doc: html pdf


.PHONY: html

html:
	$(DOXYGEN) doxygen.dcf


pdf: html
	$(CD) doc/pdf && \
	$(MV) refman.tex refman_save.tex && \
	$(GREP) -v $(EXCLUDE_PATTERN) refman_save.tex > refman.tex && \
	$(RM) refman_save.tex && \
	make && \
	$(MV) refman.pdf refman.save && \
	$(RM) *.pdf *.html *.tex *.aux *.sty *.log *.eps *.out *.ind *.idx \
	      *.ilg *.toc *.tps Makefile && \
	$(MV) refman.save refman.pdf

