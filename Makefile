MPOST_FIGS=trees.1 trees.2
DEPENDS=$(MPOST_FIGS)
include /usr/include/LaTeX.mk

$(MPOST_FIGS): trees.mp
	mpost $^

clean::
	rm -f *.aux.orig *.bbl *.blg *.log *.[1-9] *.mpx mpxerr.tex *.pdf.mk

distclean:: clean
