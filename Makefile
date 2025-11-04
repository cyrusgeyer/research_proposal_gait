# Makefile for LaTeX Research Proposal

# Main document name (without .tex extension)
MAIN = proposal

# LaTeX compiler
LATEX = pdflatex

# BibTeX compiler
BIBTEX = bibtex

# PDF viewer (you can change this based on your system)
VIEWER = evince

# Default target
all: $(MAIN).pdf

# Compile the main document with bibliography
$(MAIN).pdf: $(MAIN).tex references.bib
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

# Quick compile without bibliography (for draft edits)
quick: $(MAIN).tex
	$(LATEX) $(MAIN).tex

# View the PDF
view: $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf &

# Clean auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc $(MAIN).bbl $(MAIN).blg

# Clean all generated files including PDF
cleanall: clean
	rm -f $(MAIN).pdf

# Help message
help:
	@echo "Available targets:"
	@echo "  all       - Compile the full document with bibliography (default)"
	@echo "  quick     - Quick compile without bibliography updates"
	@echo "  view      - Open the PDF in a viewer"
	@echo "  clean     - Remove auxiliary files"
	@echo "  cleanall  - Remove all generated files including PDF"
	@echo "  help      - Show this help message"

.PHONY: all quick view clean cleanall help
