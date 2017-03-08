# BIT-thesis
LaTex template for BIT thesis

# Author 
Yang Yating 

# 编译方式 XeLaTex
xelatex -no-pdf --interaction=nonstopmode demo
bibtex demo
xelatex -no-pdf --interaction=nonstopmode demo
xelatex --interaction=nonstopmode demo
