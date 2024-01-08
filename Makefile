# Name of the main .tex file 
MAIN=main

# PDF viewer
VIEWER=evince

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
    pdflatex $(MAIN)
    bibtex $(MAIN)
    pdflatex $(MAIN)
    pdflatex $(MAIN)

view: all
    $(VIEWER) $(MAIN).pdf &

clean:
    rm -f *.aux *.bbl *.blg *.log *.out *.pdf