########################################################################
## Customizações do abnTeX2 (http://abnTeX2.googlecode.com)           ##
## para o Insituto Federal de Educação, Ciência e Tecnologia - IFCE   ##
##                                                                    ##
## This work may be distributed and/or modified under the             ## 
## conditions of the LaTeX Project Public License, either version 1.3 ##
## of this license or (at your option) any later version.             ##
## The latest version of this license is in                           ##
##   http://www.latex-project.org/lppl.txt                            ##
## and version 1.3 or later is part of all distributions of LaTeX     ##
## version 2005/12/01 or later.                                       ##
##                                                                    ##
## This work has the LPPL maintenance status `maintained'.            ##
##                                                                    ##
## The Current Maintainer of this work is Clodomir Silva Lima Neto    ##
##                                                                    ##
## Project available on: https://github.com/clodomirneto/IFCETeX2     ##
##                                                                    ##
## Further information about abnTeX2                                  ##
## are available on http://abntex2.googlecode.com/                    ##
##                                                                    ##
########################################################################

filename=documento

all: compile
	
compile:
	@echo "*********************************************************"
	@echo "*                                                       *"
	@echo "* Package 'IFCETeX2' Release 1.0 -- 17 de Dezembro 2017 *"
	@echo "*                                                       *"
	@echo "*********************************************************"
	@echo "Compilando..."
	pdflatex $(filename).tex
	bibtex $(filename)
	pdflatex $(filename).tex
	pdflatex $(filename).tex
	@echo "Processo finalizado com sucesso!"

	
clean:
	@echo -n "Limpando arquivos auxiliares...\n"
	@rm -f *.out *.aux *.alg *.acr *.dvi *.gls *.log *.bbl *.blg *.ntn *.not *.lof *.loq *.lot *.toc *.loa *.lsg *.nlo *.nls *.ilg *.ind *.ist *.glg *.glo *.xdy *.acn *.idx *.loq
	@rm -f $(filename).pdf
	@echo "Processo finalizado com sucesso!"
