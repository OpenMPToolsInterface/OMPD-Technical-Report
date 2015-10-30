DOC_NAME=ompd-tr
FILE_NAME=$(DOC_NAME).tex

default: all

withnotes: FILE_NAME:='\newcommand{\withnotes}{}\input{$(DOC_NAME).tex}'
withnotes: all

all:
	pdflatex $(FILE_NAME)
	bibtex $(DOC_NAME)
	pdflatex $(FILE_NAME)
	pdflatex $(FILE_NAME)

dist-clean: clean
	rm -f $(DOC_NAME).pdf

clean:
	rm -f $(DOC_NAME).aux
	rm -f $(DOC_NAME).bbl
	rm -f $(DOC_NAME).blg
	rm -f $(DOC_NAME).dvi
	rm -f $(DOC_NAME).log
	rm -f $(DOC_NAME).out
	rm -f $(DOC_NAME).ps
	rm -f $(DOC_NAME).cb2
	rm -f $(DOC_NAME).cb
	rm -f $(DOC_NAME).toc
	rm -f comment.cut
	rm -f *~
