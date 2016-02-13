all:
	latex glucose.tex
	bibtex glucose
	latex glucose.tex
	latex glucose.tex
	dvipdf glucose

diff:
	latexdiff glucose_v4.tex glucose_v5.tex > diff_raw.tex
	cat diff_raw.tex | tr -d '\015' > diff.tex	
	latex diff.tex
	bibtex diff
	latex diff.tex
	latex diff.tex
	dvipdf diff
#	pdflatex diff.tex
#	pdflatex diff.tex

backup:
	tar cvfz ../backup.tar.gz *; mv ../backup.tar.gz .

clean:
	rm -f glucose.aux  glucose.bbl  glucose.blg  glucose.dvi  glucose.log  glucose.pdf *~
