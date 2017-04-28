# BIT-thesis 北京理工大学硕士（博士）学位论文LaTex模板

![Beijing Institude of Technology](https://github.com/y-yating/image/raw/master/image-school/BIT-small.png)
![SAC](https://github.com/y-yating/image/raw/master/image-school/bit-student.jpg)

学位论文通常具有比较严格的格式要求，这是为了方便同行学术交流的起码要求，同时也是科学研究严谨性的体现。然而，由于市场各种排版软件混杂，使用者水平不一，学生对格式的重视程度不够，学生编写标准格式的学位论存在很多问题。

BIT-Thesis 为符合北京理工大学硕士（博士）学位论文的 LaTex 模板。通过 BIT-Thesis 模板可以轻松攥写符合学校格式要求的学位论文，学生可将关注点更多地放在高质量的内容本身，而避免繁琐的论文格式调整。

目前本模板还处于不断修改与更新阶段，可能存在诸多错误与问题，请提出宝贵意见至 <yangyating@bit.edu.cn>，或者直接在 GitHub 中提交 Pull Request。

本项目得到了北京理工大学学生事务中心的资助。

## 作者

[Yang Yating](https://github.com/y-yating/)

## 使用方式

下载文件后，Windows 系统请点击运行 `BIT-thesis-run.bat` 脚本，Linux 系统以及 macOS 系统请点击运行 `BIT-thesis-run.sh` 脚本。脚本会自动运行生成文档 `demo.pdf`。

本模板使用 XETEX 引擎提供的 `xelatex` 的命令处理，作用于“主控文档” `demo.tex`。并且，可以省略扩展名。

##  通过 XeLaTex 编译

完整的处理流程是：

```
    xelatex -no-pdf --interaction=nonstopmode demo
    bibtex demo
    xelatex -no-pdf --interaction=nonstopmode demo
    xelatex --interaction=nonstopmode demo
```
