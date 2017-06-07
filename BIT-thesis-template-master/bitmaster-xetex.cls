%==================================================
%% bitmaster-xetex.cls for BIT Master Thesis
%% based on CASthesis.cfg -- http://www.ctex.org/PackageCASthesis
%% modified by yang yating
%% version: 1.0
%% last update: Dec 25th, 2016
%%==================================================

%% math packages -- conflict with xunicode
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathrsfs} 
% 直立希腊字母字体
\RequirePackage{upgreek}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{bitmaster-xetex}
  [2016/12/25 v0.1 bitmaster-xetex document class]
\newif\ifBIT@typeinfo \BIT@typeinfotrue
\DeclareOption{notypeinfo}{\BIT@typeinfofalse}
\newif\ifBIT@dvips \BIT@dvipsfalse
\DeclareOption{dvips}{\BIT@dvipstrue}
\DeclareOption{dvipdfm}{\BIT@dvipsfalse}
\DeclareOption{pdftex}{\BIT@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%\LoadClass[fancyhdr,fntef,UTF8,adobefonts]{ctexbook}[2005/11/25]
\LoadClass[fancyhdr,fntef,UTF8]{ctexbook}[2005/11/25]
%% 导入 bitmaster-xetex.cfg 文件
\AtEndOfPackage{\makeatletter\input{bitmaster-xetex.cfg}\makeatother}

%% 当前模板的版本
\newcommand{\version}{\BIT@value@templateversion}

%%==============引用geometry 宏包设置纸张和页面========================
%设置版面:上3.5cm，下2.5cm，左2.7cm，右2.7cm，页眉2.5cm，页脚1.8cm，装订线0cm
\usepackage[%
paper=a4paper,%
top=3.5cm,% 上 3.5cm %
bottom=2.5cm,% 下 2.5cm %
left=2.7cm,% 左 2.7cm %
right=2.7cm,% 右 2.7cm %
headheight=1.0cm,% 页眉 2.5cm %
footskip=0.7cm% 页脚 1.8cm %
]{geometry} % 页面设置 %
%% ====================定义几个常用的数学常量符号=====================================

\parskip 0.5ex plus 0.25ex minus 0.25ex
%% Command -- Clear Double Page
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%设置行距，大概为22榜，较麻烦
\RequirePackage{setspace}
\setstretch{1.52} 

%% 设置章节格式
\CTEXsetup[number={\arabic{chapter}},name={第,章},
            nameformat={\bfseries\heiti\centering\zihao{3}},
            titleformat={\bfseries\heiti\zihao{3}},
            afterskip={30pt}]{chapter}
\CTEXsetup[nameformat={\bfseries\heiti\zihao{4}},
            titleformat={\bfseries\heiti\zihao{4}}]{section}
\CTEXsetup[nameformat={\bfseries\heiti\zihao{-4}},
            titleformat={\bfseries\heiti\zihao{-4}}]{subsection}
\CTEXsetup[nameformat={\bfseries\zihao{-4}},
            titleformat={\bfseries\zihao{-4}}]{subsubsection}
\CTEXsetup[format={\Large\bfseries}]{section}
%\CTEXsetup[beforeskip={10pt}]{chapter}

%% 用\textsf{titletoc}设定目录格式。
\RequirePackage{titletoc}
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti \zihao{4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2em]{\songti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[4em]{\songti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}

%% 选择编译
\RequirePackage{ifthen}

%% check pdfTeX mode
\RequirePackage{ifpdf}

%% fancyhdr 页眉页脚控制
\RequirePackage{fancyhdr}

%% 复杂表格
\RequirePackage{threeparttable}
\RequirePackage{dcolumn}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\newcolumntype{d}[1]{D{.}{.}{#1}}% or D{.}{,}{#1} or D{.}{\cdot}{#1}


%% 定义几个常用的数学常量符号
\newcommand{\me}{\mathrm{e}} %定义 对数常数e，虚数符号i,j以及微分算子d为直立体。
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\dif}{\mathrm{d}}

% 可伸长的数学符号
% \makeatletter
\def\ExtendSymbol#1#2#3#4#5{\ext@arrow 0099{\arrowfill@#1#2#3}{#4}{#5}}
\def\RightExtendSymbol#1#2#3#4#5{\ext@arrow 0359{\arrowfill@#1#2#3}{#4}{#5}}
\def\LeftExtendSymbol#1#2#3#4#5{\ext@arrow 6095{\arrowfill@#1#2#3}{#4}{#5}}
% \makeatother

\newcommand\myRightarrow[2][]{\RightExtendSymbol{=}{=}{\Rightarrow}{#1}{#2}}
\newcommand\myLeftarrow[2][]{\LeftExtendSymbol{\Leftarrow}{=}{=}{#1}{#2}}
\newcommand\myBioarrow[2][]{\ExtendSymbol{\Leftarrow}{=}{\Rightarrow}{#1}{#2}}
\newcommand\myLongEqual[2][]{\ExtendSymbol{=}{=}{=}{#1}{#2}}


%% 英文字体使用 Times New Roman
\RequirePackage{fontspec}
\RequirePackage{xltxtra} % \XeTeX Logo
%% Times Fonts
\RequirePackage{times}
%% Set Old Fonts Encoding 
\usepackage[T1]{fontenc}



% 重定义\nobreakspace命令 -- xetex与T1字体包一起使用时出现的问题
% Ref: http://bbs.ctex.org/viewthread.php?tid=60547&extra=page%3D1&page=2
\DeclareRobustCommand\nobreakspace{\leavevmode\nobreak\ }


%% graphics packages
\RequirePackage{graphicx}
%% 并列子图
\RequirePackage{subfigure}

\RequirePackage{wrapfig}
%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
% ccaption -- bicaption
\RequirePackage{ccaption}
\captiondelim{\ }
\captionnamefont{\songti\zihao{5}}
\captiontitlefont{\songti\zihao{5}}


%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
% 上标引用
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}



% 将浮动参数设为较宽松的值
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}


% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand\theequation{\arabic{chapter}.\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}.\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}.\arabic{table}}

% 颜色宏包
\RequirePackage{xcolor}


%% 一些有趣的符号图案
\RequirePackage{marvosym}
\RequirePackage{wasysym}


% 中文破折号
\newcommand{\cndash}{\rule{0.0em}{0pt}\rule[0.35em]{1.4em}{0.05em}\rule{0.2em}{0pt}}

% listings 源代码显示宏包
\RequirePackage{listings}
\lstset{tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
  rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
  keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  aboveskip=1em, %代码块边框
  %% added by http://bbs.ctex.org/viewthread.php?tid=53451
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=true
  numbersep=-1em
}
\renewcommand{\lstlistingname}{代码} %% 重命名Listings标题头


%% hyperref package

\ifxetex  % xelatex
\RequirePackage[xetex]{hyperref}
\hypersetup{
  bookmarksnumbered,%
  colorlinks,%
  linkcolor=black,%
  citecolor=black,%
  plainpages=false,%
  pdfstartview=FitH
}
\else
\ifpdf    % pdflatex
\RequirePackage[pdftex,unicode]{hyperref}
\else     % dvipdfmx or dvips
\RequirePackage[dvipdfmx,unicode]{hyperref}
\fi
\fi

%% enumerate 列表环境间距调节
\usepackage{enumitem}
% \setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
% \setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
% \setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}  

%_  参考文献风格 added by wei.jianwen@gmail.com
\bibliographystyle{GBT7714-2005NLang}
% \bibliographystyle{thubib}
% \newcommand\thudot{\unskip.}
% \newcommand\thumasterbib{[Master Thesis]}
% \newcommand\thuphdbib{[Doctor Thesis]}

%_ BITspace
\newcommand\BITspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\BIT@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\BITfiledate{#1}%
  \def\BITfileversion{#2}%
  \def\BITfileinfo{#3}}%
\expandafter\ifx\csname ver@bitmaster-xetex.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_bitmaster-xetex.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@bitmaster-xetex.cls\endcsname}
\fi
\expandafter\BIT@getfileinfo\reserved@a\relax? ? \relax\relax
\def\BIT@underline[#1]#2{%
  \underline{\hbox to #1{\hfill#2\hfill}}}
\def\BITunderline{\@ifnextchar[\BIT@underline\underline}

%%%%中文标题页的可用命令
\newcommand\classification[1]{\def\BIT@value@classification{#1}}
\newcommand\studentnumber[1]{\def\BIT@value@studentnumber{#1}}
\newcommand\confidential[1]{\def\BIT@value@confidential{#1}}
\newcommand\UDC[1]{\def\BIT@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\BIT@value@serialnumber{#1}}
\newcommand\school[1]{\def\BIT@value@school{#1}}
\newcommand\degree[1]{\def\BIT@value@degree{#1}}
\renewcommand\title[2][\BIT@value@title]{%
  \def\BIT@value@title{#2}
  \def\BIT@value@titlemark{\MakeUppercase{#1}}}

\newcommand\vtitle[1]{\def\BIT@value@vtitle{#1}}
\renewcommand\author[1]{\def\BIT@value@author{#1}}
\newcommand\advisor[1]{\def\BIT@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\BIT@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\BIT@value@major{#1}}
\newcommand\submitdate[1]{\def\BIT@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\BIT@value@defenddate{#1}}
\newcommand\institute[1]{\def\BIT@value@institute{#1}}
\newcommand\chairman[1]{\def\BIT@value@chairman{#1}}


%% 第一页和第二页
%_ “绘制”BIT中文标题页
\renewcommand\maketitle[1]{%
  \cleardoublepage
  \thispagestyle{empty}  
  \begin{center}
    \vspace*{60mm}
    {\heiti\zihao{-2} \BIT@value@title}
    \vskip 40mm
    {\heiti \zihao{-2} \BIT@value@author}
     \vskip 4mm
    {\songti \zihao{4} \BIT@value@defenddate}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifBIT@typeinfo
    \fi
    \cleardoublepage
  \fi
 
  \newpage
  \cleardoublepage
  \thispagestyle{empty}

%udc ltz
{
  {\heiti \zihao{5} \noindent \BIT@label@classification} \BIT@value@classification \\ 
  {\heiti \zihao{5} \BIT@label@UDC}  \BIT@value@UDC 
}
  
   \begin{center}

    \vskip \stretch{1}
       {\heiti\zihao{-2} \BIT@value@title}
    \vskip \stretch{1}

    {\fangsong\zihao{4}}      
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}

    {\heiti\zihao{-3}
     \begin{tabular}{l p{3mm} c}
      \BIT@label@author & &\BITunderline[180pt]{\BIT@value@author}
    \\
      \BIT@label@institute & & \BITunderline[180pt]{\BIT@value@institute}
    \\
      \BIT@label@advisor & &  \BITunderline[180pt]{\BIT@value@advisor}
    \\  
      \BIT@label@chairman & &   \BITunderline[180pt]{\BIT@value@chairman}
    \\  
      \BIT@label@degree & &    \BITunderline[180pt]{\BIT@value@degree}
    \\  
      \BIT@label@major & &    \BITunderline[180pt]{\BIT@value@major}
    \\  
      \BIT@label@school & &   \BITunderline[180pt]{\BIT@value@school}
    \\  
      \BIT@label@defenddate & &  \BITunderline[180pt]{\BIT@value@defenddate}
    \end{tabular}}

  \end{center} 

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifBIT@typeinfo
    \fi
    \cleardoublepage
  \fi
}


% English Title Page
% 英文标题页可用命令
\newcommand\englishtitle[1]{\def\BIT@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\BIT@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\BIT@value@englishadvisor{#1}}
\newcommand\englishschool[1]{\def\BIT@value@englishschool{#1}}
\newcommand\englishinstitute[1]{\def\BIT@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\BIT@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\BIT@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\BIT@value@englishmajor{#1}}
\newcommand\englishchairman[1]{\def\BIT@value@englishchairman{#1}}

% "绘制"英文标题页
\newcommand\makeenglishtitle[1]{%
  \cleardoublepage
  \thispagestyle{empty}
  
   \begin{center}

  
   \vspace*{10em}
  
   {\zihao{-2}\textbf{\BIT@value@englishtitle}}
  
   \vskip \stretch{1}

   {\zihao{-3}
     \begin{tabular}{ll}
      \BIT@label@englishauthor & \BITunderline[200pt]{\BIT@value@englishauthor}
    \\
      \BIT@label@englishinstitute &  \BITunderline[200pt]{\BIT@value@englishinstitute}
    \\
      \BIT@label@englishadvisor &  \BITunderline[200pt]{\BIT@value@englishadvisor}
    \\  
      \BIT@label@englishchairman &   \BITunderline[200pt]{\BIT@value@englishchairman}
    \\  
      \BIT@label@englishdegree &    \BITunderline[200pt]{\BIT@value@englishdegree}
    \\  
      \BIT@label@englishmajor &     \BITunderline[200pt]{\BIT@value@englishmajor}
    \\  
      \BIT@label@englishschool &     \BITunderline[200pt]{\BIT@value@englishschool}
    \\  
      \BIT@label@englishdate &   \BITunderline[200pt]{\BIT@value@englishdate}
    \end{tabular}}

  \end{center} 

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
  \thispagestyle{empty}
   \cleardoublepage
  \fi
}

%绘制树立排放的论文题目和学校名称

\newcommand\makeVerticalTitle{
   \cleardoublepage
   \thispagestyle{empty}
   \vskip 5cm
   \begin{center}
    \setstretch{1.1}   
    \begin{minipage}{1em}
        {\heiti\zihao{3}\BIT@value@vtitle}
        \vskip 2cm
        {\heiti\zihao{3}\BIT@value@school}
    \end{minipage}
   \end{center}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
  
}

% 原创性声明
\newcommand\makeDeclareOriginal{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  {\bf\zihao{3} \BIT@label@original}
  \end{center}
  \vskip 10pt
  {\zihao{4}\BIT@label@originalcontent}
  \vskip 10pt
  \hspace{8em}{\zihao{4}\BIT@label@authorsign} \BITunderline[6em]{} \hspace{2em} {\zihao{4}\BIT@label@originalDate} \BITunderline[6em]{}

  \vskip 30mm

  \begin{center}
  {\bf\zihao{3} \BIT@label@authorization}
  \end{center}
  \vskip 10pt
  {\zihao{4} \BIT@label@authorizationcontent}
  \vskip 40pt
  
  \hspace{8em}{\zihao{4}\BIT@label@authorsign} \BITunderline[6em]{} \hspace{2em} {\zihao{4}\BIT@label@Supervisorsign} \BITunderline[6em]{}
  \vskip 15pt
  \hspace{8em}{\zihao{4}\BIT@label@originalDate} \BITunderline[6em]{} \hspace{2em} {\zihao{4}\BIT@label@originalDate} \BITunderline[6em]{}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
  
}


%_ 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\songti \zihao{5} \BIT@label@headschoolname}  % 奇数页左页眉
\fancyfoot[C]{\songti \zihao{5} {\thepage}}      % 页脚


\fancypagestyle{plain}{% 设置开章页页眉页脚风格(只有页码作为页脚)
  \fancyhf{}%
  \fancyfoot[C]{\songti \zihao{5} \BIT@label@headschoolname}
  \fancyfoot[C]{\songti \zihao{5} ~---~{\thepage}~---~} %%首页页脚格式
}

% 每一章的首页也使用fancyhdr的页眉页脚设置
% \makeatletter
% \let\ps@plain\relax
% \let\ps@plain=\ps@fancy
% \makeatother
 

 %_ 中文摘要
 \newenvironment{abstract}
 {
  \cleardoublepage
  \chapter{\BIT@label@abstract}
 }
 {}
%下一页从偶数页开始
 \newcommand\beginatevenpage{
 \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
 } 
 %_ 中文关键词
 \newcommand\keywords[1]{%
   \vspace{2ex}\noindent{\bf \BIT@label@keywords} #1}

 %_ 英文摘要
 \newenvironment{englishabstract}
 {
  \clearpage
  \chapter{\BIT@label@englishabstract}
 }
 {}

 % _英文摘要
 \newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \BIT@label@englishkeywords} #1}

%ltz add
%\RequirePackage{titletoc}
%\makeatletter
%\renewcommand\section{{\ziti{1}}}
%\makeatother
%_ 目录
\renewcommand\tableofcontents{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\contentsname}%目录里显示“目录”，否则\chapter*
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}

\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

%_ 参考文献环境
\renewenvironment{thebibliography}[1]
     {\chapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \setlength{\parsep}{1mm} 
            \setlength{\labelsep}{0.5em} 
            \setlength{\itemsep}{0.05pc} 
            \setlength{\listparindent}{0in} 
            \setlength{\itemindent}{0in} 
            \setlength{\rightmargin}{0in} 
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

    
\newenvironment{publications}[1]
     {\chapter{\BIT@label@publications}%
      \@mkboth{\MakeUppercase\BIT@label@publications}
              {\MakeUppercase\BIT@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \setlength{\parsep}{1mm} 
            \setlength{\labelsep}{0.5em} 
            \setlength{\itemsep}{0.05pc} 
            \setlength{\listparindent}{0in} 
            \setlength{\itemindent}{0in} 
            \setlength{\rightmargin}{0in} 
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}


\newenvironment{projects}[1]
     {\chapter{\BIT@label@projects}%
      \@mkboth{\MakeUppercase\BIT@label@projects}
              {\MakeUppercase\BIT@label@projects}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `projects' environment}}%
      \endlist}
    
    \newenvironment{resume}
  {\chapter{\BIT@label@resume}}
  {}
  
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
   {\endlist}
   
\newenvironment{resumeli}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
   {\endlist}
   
\renewenvironment{thanks}
  {\chapter{\BIT@label@thanks}}
  {}
  
\newenvironment{symbolnote}
  {\chapter{\BIT@label@symbolnote}
  \fangsong} 
  {} 


\setcounter{secnumdepth}{4}  % 章节编号深度 (part 对应 -1)
\setcounter{tocdepth}{2}     % 目录深度 (part 对应 -1)
    
    
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `bitmaster-xetex.cls'.


