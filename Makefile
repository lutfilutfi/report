# Name of the main .tex file 
MAIN=main

# PDF viewer
VIEWER=evince

report: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
    pdflatex $(MAIN)
    bibtex $(MAIN)
    pdflatex $(MAIN)
    pdflatex $(MAIN)

view: report
    $(VIEWER) $(MAIN).pdf &

clean:
    rm -f *.aux *.bbl *.blg *.log *.out *.pdf