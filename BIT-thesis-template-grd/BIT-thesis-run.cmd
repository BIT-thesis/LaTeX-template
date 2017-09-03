
del demo.pdf
xelatex -no-pdf --interaction=nonstopmode demo
bibtex demo
xelatex -no-pdf --interaction=nonstopmode demo
xelatex --interaction=nonstopmode demo

start "" "demo.pdf"

