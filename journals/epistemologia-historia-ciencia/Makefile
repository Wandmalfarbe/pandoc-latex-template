# Makefile for EHC Journal Template
# Epistemología e Historia de la Ciencia

PANDOC = pandoc
LATEX = xelatex
BIBER = biber

# Source files
EXAMPLE = ejemplo-articulo
TEMPLATE = ehc-journal.latex
BIB = referencias.bib

# Output
PDF = $(EXAMPLE).pdf
TEX = $(EXAMPLE).tex

.PHONY: all clean pdf tex

all: pdf

# Build PDF directly with citeproc (simpler)
pdf-citeproc: $(EXAMPLE).md $(TEMPLATE) $(BIB)
	$(PANDOC) $(EXAMPLE).md \
		--template=$(TEMPLATE) \
		--pdf-engine=xelatex \
		--citeproc \
		--bibliography=$(BIB) \
		-o $(PDF)

# Build TEX file for biblatex workflow
tex: $(EXAMPLE).md $(TEMPLATE)
	$(PANDOC) $(EXAMPLE).md \
		--template=$(TEMPLATE) \
		--biblatex \
		-o $(TEX)

# Full build with biblatex (for complex bibliographies)
pdf: tex
	$(LATEX) $(TEX)
	$(BIBER) $(EXAMPLE)
	$(LATEX) $(TEX)
	$(LATEX) $(TEX)

# Clean auxiliary files
clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc *.fdb_latexmk *.fls *.synctex.gz

# Clean all generated files
distclean: clean
	rm -f $(PDF) $(TEX)

# Help
help:
	@echo "Makefile for EHC Journal Template"
	@echo ""
	@echo "Targets:"
	@echo "  pdf          - Build PDF with biblatex (default)"
	@echo "  pdf-citeproc - Build PDF with citeproc (simpler)"
	@echo "  tex          - Generate LaTeX file only"
	@echo "  clean        - Remove auxiliary files"
	@echo "  distclean    - Remove all generated files"
	@echo "  help         - Show this help message"
