@echo off

set BASE=manual


xelatex -no-pdf --interaction=nonstopmode manual
bibtex manual
xelatex -no-pdf --interaction=nonstopmode manual
xelatex --interaction=nonstopmode manual
start "" manual.pdf
