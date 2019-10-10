ARQUIVO=main


$(ARQUIVO).pdf: beamerthemeAmsterdam.sty  $(ARQUIVO).tex
	pdflatex $(ARQUIVO).tex 
	bibtex $(ARQUIVO).aux
	pdflatex $(ARQUIVO).tex 
	pdflatex $(ARQUIVO).tex

clean:
	rm *.aux *.bbl *.blg *.log *.blg *.nav *.out *.snm *.toc *.pdf
