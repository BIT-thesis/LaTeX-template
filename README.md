
# BIT-thesis
北京理工大学硕士（博士）学位论文LaTex模板

![](https://github.com/y-yating/image/raw/master/image-school/BIT-small.png)
![](https://github.com/y-yating/image/raw/master/image-school/bit-student.jpg)


学位论文通常具有比较严格的格式要求，这是为了方便同行学术交流的起码要求，同时也是科学研究严谨性的体现。然而，由于市场各种排版软件混杂，使用者
水平不一，学生对格式的重视程度不够，学生编写标准格式的学位论存在很多问题。

BIT-Thesis 为符合北京理工大学硕士（博士）学位论文的LaTex模板。通过BIT-Thesis模板可以轻松攥写符合学校格式要求的学位论文，学生可将关注点更多地放在高质量的内容本身，而避免繁琐的论文格式调整。

目前本模板还处于不断修改与更新阶段，可能存在诸多错误与问题。请将遇到的问题提交给我们并提出宝贵的意见，我们将进一步完善该模板。

本项目得到了北京理工大学学生事务中心的资助。

### 作者
Yang Yating

### 使用方式

windows 系统点击运行BIT-thesis-run.bat 脚本，linux 系统
以及mac 系统请点击运行BIT-thesis-run.sh 脚本。脚本会自动运行生成文档demo.pdf。

本模板使用XETEX 引擎提供的xelatex 的命令处理，作用于“主控文档”demo.tex。并且，可以省略扩展名。

###  编译方式 XeLaTex
完整的处理流程是：

```
    xelatex -no-pdf --interaction=nonstopmode demo
    bibtex demo
    xelatex -no-pdf --interaction=nonstopmode demo
    xelatex --interaction=nonstopmode demo
```
