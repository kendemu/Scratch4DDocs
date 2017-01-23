.PHONY: all

SOURCES         = Scratch4D.md Scratch4Dを実行する.md Scratch4Dの仕組み.md ElectronでHelper\ Appを実装する.md Scratch4Dの設計と実装.md
TARGET          = Scratch4D.pdf
MIDOPTIONS      = -f markdown_github
OPTIONS         = --toc -N -V mainfont=IPAGothic --latex-engine=xelatex

all: main

main: $(TARGET)
	pandoc $(SOURCES) $(OPTIONS) -o $(TARGET)
