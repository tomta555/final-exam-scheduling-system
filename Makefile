# A Makefile for building TeX documents
#

DOC = sampleReport
# Set $(DOC) to the name of the document, without extension.
TEXDIR = ../cpecmu_proj
# Set $(TEXDIR) to point to the directory containing cornell.cls.

.DEFAULT_GOAL := $(TARGETS)
.PHONY: all clean clobber dummy

ifeq ($(OS), Windows_NT)
  SEP = \;
  # for MikTeX+Cygwin
else
  SEP = :
endif

export TEXINPUTS = $(TEXDIR)$(SEP)
export INDEXSTYLE = $(TEXDIR)$(SEP)

OUTPUTTYPE = pdf
LATEXMK = @latexmk -r latexmkrc
TARGETS = $(DOC).$(OUTPUTTYPE)

all: $(TARGETS)

clean:
	$(LATEXMK) -c $(DOC).tex

clobber:
	$(LATEXMK) -C $(DOC).tex

$(DOC).pdf: dummy
	$(LATEXMK) -pdfxe -synctex=1 $(DOC).tex
