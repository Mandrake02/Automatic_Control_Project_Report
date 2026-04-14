all: pdflatex

clear: clear_out clear_build

pdflatex: main.tex
	pdflatex -synctex=1 -interaction=nonstopmode --aux-directory=build main.tex

biber: main.bib
	biber --output-directory build main

clear_out:
	rm main.synctex.gz 

clear_build:
	rm -r build

clear_add_files:
	rm main.aux main.bcf main.fdb_latexmk main.fls main.log main.out main.run.xml main.toc main.bbl

clear_pdf:
	rm -rf *.pdf