
# BIT-Thesis v1.5
# 北京理工大学硕士（博士）学位论文LaTeX模板

![Beijing Institude of Technology](https://github.com/y-yating/image/raw/master/image-school/bit-thesis.png)

学位论文通常具有比较严格的格式要求，这是为了方便同行学术交流的起码要求，同时也是科学研究严谨性的体现。然而，由于市场各种排版软件混杂，使用者水平不一，学生对格式的重视程度不够，学生编写标准格式的学位论存在很多问题。

BIT-Thesis 为符合北京理工大学硕士（博士）学位论文的 LaTeX 模板。通过 BIT-Thesis 模板可以轻松撰写符合学校格式要求的学位论文，学生可将关注点更多地放在高质量的内容本身，而避免繁琐的论文格式调整。

目前本模板还处于不断修改与更新阶段，可能存在诸多错误与问题，请提出宝贵意见,可直接在 GitHub 中提交Issues 或 Pull Request。

新手可使用**LaTeX学习资料**目录下的学习资料进行初步学习。因学习资料内容较多，已移至 [LaTeX学习资料](https://github.com/BIT-thesis/LaTeX-materials)，内含基础学习资料以及北理工学位论文格式资料。

# QQ 交流群：北理TeX交流群
# 群   号：170368921

## 安装配置环境

*  windows、linux用户推荐安装TeX Live套装，并更新宏包。 [北理工TeX Live镜像](http://mirror.bit.edu.cn/CTAN/systems/texlive/Images/)
*  OSX用户推荐安装Mac TeX。[北理工Mac TeX镜像](http://mirror.bit.edu.cn/CTAN/systems/mac/mactex/)
*  由于CTeX套装所含宏包比较陈旧，可能会导致编译无法通过，故不推荐安装。如果已安装CTeX，建议将其卸除。
*  鉴于Texlive安装包过大和跨版本更新不支持，喜欢折腾的，可以安装MikTex，目前全平台支持，具体下载和安装方法可以参考[MiKTeX安装](https://miktex.org/)


## 使用方式

下载文件后，Windows 系统请点击运行 `BIT-thesis-run.bat` 脚本，Linux 系统以及 mac OS 系统请点击运行 `BIT-thesis-run.sh` 脚本。脚本会自动运行生成文档 `demo.pdf`。

若使用**硕士**论文模板，请在`demo.tex`中`\documentclass`命令采用`master`选项；若使用**博士**论文模板，请使用`doctor`选项。

```
\documentclass[oneside, master]{BIT-thesis-grd} %硕士模板 
\documentclass[oneside, doctor]{BIT-thesis-grd} %博士模板 
```

所有.tex都采用**UTF-8**编码格式


##  通过 XeLaTeX 编译


- 手动模式编译：完整的处理流程是：

```
    xelatex -no-pdf --interaction=nonstopmode demo
    bibtex demo
    xelatex -no-pdf --interaction=nonstopmode demo
    xelatex --interaction=nonstopmode demo
```
- 编译器编译：
采用智能编辑器编译，必须设置默认的tex编译引擎为xelatex，具体可以在每个编辑器中的设置——编译器-Xelatex，推荐用编译器编译

- 附加的编译方法：模版包含了latexmk设置文件，可以进行一体化编译。将命令行工作目录切换到项目文件夹下，执行
```bash
latexmk
```
命令即可自动调用相关程序进行编译，处理各种文件依赖并自动预览。执行`latexmk -c`命令清理所有缓存文件。也可以使用TeXstudio、Texmaker或WinEdt等编辑调用`latexmk`编译，请将编译引擎设置成latexmk。另外在Windows平台下使用MikTeX可能还需要安装Perl语言解释器

`到文档最后成稿，只需要小改的时候，才推荐用批处理就行操作，不然很难定位错误。`

- 在vscode上编译 (LaTex Workshop)：对于使用vscode写tex的用户，添加如下配置，可在vscode上使用XeLaTeX：

```
"latex-workshop.latex.tools": [
    {
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
        ]
    }
],
"latex-workshop.latex.recipes": [
    {
        "name": "xelatex -> bibtex -> xelatex*2",
        "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
        ]
    }
]
```
## Linux用户可能遇到的问题

字体缺失问题： 因为库里用到的字体是Windows里的宋体、楷体、黑体等字体，在编译过程中会报错缺失这些字体，可以到fontzone等网站下载，copy到`/usr/share/fonts`里然后刷新cache即可。

黑体：`https://fontzone.net/downloadfile/simhei`

宋体：`https://fontzone.net/downloadfile/simsum`

楷体：`https://fontzone.net/downloadfile/kaiti`

## 作者

[Yang Yating](https://github.com/y-yating/), 
[Wang Wei](https://github.com/qiuzhu/)
##  致谢
本项目得到了北京理工大学学生事务中心的资助。

感谢大家宝贵的修改意见！！！欢迎大家一同努力完善BIT-Thesis模板！

## v1.5版本更新
- 调整目录格式
（目录、插图、表格索引页的标题中加入一个字符间距；目录中一级标题改为黑体）
