# BIT-thesis
LaTex template for BIT thesis

学位论文通常具有比较严格的格式要求，这是为了方便同行学术交流的起码要求，同时也是科学研究严谨性的体现。然而，由于市场各种排版软件混杂，使用者
水平不一，学生对格式的重视程度不够，学生编写标准格式的学位论存在很多问题。

BIT-Thesis 可以为我校学生提供轻松撰写符合要求学位论文的环境。通过BIT-Thesis模板编写的论文能符合我校学位论文的要求，学生可将关注点更多地放在高质量的内容本身，而避免繁琐的论文格式调整。

## 作者
Yang Yating

## 使用方式
这个模板的中文解决方案是 XETEX/LATEX

## 编译方式 XeLaTex
    xelatex -no-pdf --interaction=nonstopmode demo
    bibtex demo
    xelatex -no-pdf --interaction=nonstopmode demo
    xelatex --interaction=nonstopmode demo

