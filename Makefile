FILE ?=submission


#articles
  all:
	latex '\nonstopmode\input $(FILE)'
#	pdflatex '\nonstopmode\input $(FILE)'
	bibtex $(FILE)
	latex '\batchmode\input {$(FILE)}'
	pdflatex $(FILE).tex
#	dvipdf $(FILE).dvi

clean:
	rm -f *.aux *.log *.dvi *.blg *.bbl *~

