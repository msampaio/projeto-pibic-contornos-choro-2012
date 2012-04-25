NAME = projeto-pibic-contornos-choro plano-bolsista-contornos-choro
USE_PDFLATEX = 1
LATEX_ENV+=TEXINPUTS=.:tex:lisp:src:config:figs:data:lily:out:
PDFLATEX_ENV+= $(LATEX_ENV)

LATEX_MK = config/make/latex-mk/latex-mk
include config/make/latex.mk
include config/make/latex-mk/latex.gmk

light_clean:
	rm -f $(NAME).log
	rm -f $(NAME).bbl
	rm -f $(NAME).blg
	rm -f $(NAME).aux
