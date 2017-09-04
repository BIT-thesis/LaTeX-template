
# BIT-Thesis 北京理工大学硕士（博士）学位论文LaTeX模板

![Beijing Institude of Technology](https://github.com/y-yating/image/raw/master/image-school/bit-thesis.png)

学位论文通常具有比较严格的格式要求，这是为了方便同行学术交流的起码要求，同时也是科学研究严谨性的体现。然而，由于市场各种排版软件混杂，使用者水平不一，学生对格式的重视程度不够，学生编写标准格式的学位论存在很多问题。

BIT-Thesis 为符合北京理工大学硕士（博士）学位论文的 LaTeX 模板。通过 BIT-Thesis 模板可以轻松撰写符合学校格式要求的学位论文，学生可将关注点更多地放在高质量的内容本身，而避免繁琐的论文格式调整。

目前本模板还处于不断修改与更新阶段，可能存在诸多错误与问题，请提出宝贵意见,可直接在 GitHub 中提交Issues 或 Pull Request。

新手可使用**LaTeX学习资料**目录下的学习资料进行初步学习。

## 作者

[Yang Yating](https://github.com/y-yating/)

## 安装配置环境

*  windows、linux用户推荐安装TeX Live套装，并更新宏包。 [北理工TeX Live镜像](http://mirror.bit.edu.cn/CTAN/systems/texlive/Images/)
*  OSX用户推荐安装Mac TeX。[北理工Mac TeX镜像](http://mirror.bit.edu.cn/CTAN/systems/mac/mactex/)
*  由于CTeX套装所含宏包比较陈旧，可能会导致编译无法通过，故不推荐安装。


## 使用方式

下载文件后，Windows 系统请点击运行 `BIT-thesis-run.bat` 脚本，Linux 系统以及 mac OS 系统请点击运行 `BIT-thesis-run.sh` 脚本。脚本会自动运行生成文档 `demo.pdf`。

本模板使用 XeTeX 引擎提供的 `xelatex` 的命令处理，作用于“主控文档” `demo.tex`。并且，可以省略扩展名。格式控制文件为BIT-thesis-grd.cls。

所有.tex都采用**UTF-8**编码格式

##  通过 XeLaTeX 编译

完整的处理流程是：

```
    xelatex -no-pdf --interaction=nonstopmode demo
    bibtex demo
    xelatex -no-pdf --interaction=nonstopmode demo
    xelatex --interaction=nonstopmode demo
```

##  致谢
本项目得到了北京理工大学学生事务中心的资助。

感谢大家宝贵的修改意见！！！欢迎大家一同努力完善BIT-Thesis模板！
