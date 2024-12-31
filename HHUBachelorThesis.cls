\ProvidesClass{HHUBachelorThesis}
% \PassOptionsToPackage{AutoFakeBold, AutoFakeSlant}{xeCJK} % XeLaTeX
\LoadClass[twoside, zihao = -4]{ctexart}
\defaultfontfeatures{AutoFakeBold = 2} % AutoFakeSlant = 0.35, LuaLaTeX

\usepackage{amsmath}\allowdisplaybreaks\numberwithin{equation}{section}
\usepackage[font = {small, sf}]{caption}
\usepackage{fancyhdr}
\usepackage{fontspec}
\usepackage{gbt7714}
\usepackage[
  paper = a4paper,
  top = 2.5cm, bottom = 2.5cm, left = 3cm, right = 3cm, headheight = 1.5cm, footskip = 1.75cm
  % top = 0.98in, bottom = 0.98in, left = 1.18in, right = 1.18in, headheight = 0.59in, footskip = 0.69in
]{geometry}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{titletoc}

\setmainfont{Times New Roman}
\setsansfont{SimHei}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\linespread{1.625}

\newcommand{\studentnumber}[1]{\def\StudentNumber{#1}}
\newcommand{\grade}[1]{\def\Grade{#1}}
\renewcommand{\title}[1]{\def\Title{#1}}
\newcommand{\major}[1]{\def\Major{#1}}
\newcommand{\name}[1]{\def\Name{#1}}
\newcommand{\advisor}[1]{\def\Advisor{#1}}
\newcommand{\reviewer}[1]{\def\Reviewer{#1}}
\newcommand{\titleen}[1]{\def\Titleen{#1}}
\newcommand{\collegeen}[1]{\def\Collegeen{#1}}
\newcommand{\subjecten}[1]{\def\Subjecten{#1}}
\newcommand{\nameen}[1]{\def\Nameen{#1}}
\newcommand{\advisoren}[1]{\def\Advisoren{#1}}
\newcommand{\declaresign}[1]{\def\DeclareSign{#1}}
\newcommand{\declaredate}[1]{\def\DeclareDate{#1}}
\newcommand{\abstractzh}[1]{\def\Abstractzh{#1}}
\newcommand{\keywordszh}[1]{\def\Keywordszh{#1}}
\newcommand{\abstracten}[1]{\def\Abstracten{#1}}
\newcommand{\keywordsen}[1]{\def\Keywordsen{#1}}

\newcommand{\clearemptydoublepage}{\clearpage{\pagestyle{empty}\cleardoublepage}}

% 中文封面
\newcommand{\ChineseCover}{
  \thispagestyle{empty}
  {\heiti \zihao{5} \hfill 学号 \underline{\StudentNumber}

  \hfill 年级 \underline{\hspace{10pt}\Grade\hspace{9pt}}}

  \vspace{32pt}
  \begin{figure}[h]
    \centering
    \includegraphics[width = \textwidth]{./media/HHUname.png}
  \end{figure}
  \vspace{32pt}\vspace{32pt}
  \begin{center}
    \bfseries \songti \zihao{1} 本科毕业论文
  \end{center}
  \vspace{32pt}
  \begin{center}
    \bfseries \heiti \zihao{2} \Title
  \end{center}
  \vspace{32pt}
  \begin{center} \bfseries \zihao{-3}
    \heiti 专\hspace{2em}业 \songti \underline{\Major} \\
    \heiti 姓\hspace{2em}名 \songti \underline{\Name} \\
    \heiti 指导教师 \songti \underline{\Advisor} \\
    \heiti 评\hspace{0.5em}阅\hspace{0.5em}人 \songti \underline{\Reviewer}
  \end{center}
  \vspace{32pt}\vspace{32pt}
  \begin{center} \bfseries \heiti \zihao{-3}
    \number\year 年 \number\month 月 \\
    中国\hspace{1em}南京
  \end{center}
  \clearemptydoublepage
}
% 英文封面
\newcommand{\EnglishCover}{
  \thispagestyle{empty}
  \begin{center}
    \bfseries \zihao{2} BACHELOR'S DEGREE THESIS \\ OF HOHAI UNIVERSITY
  \end{center}
  \vspace{32pt}\vspace{32pt}\vspace{32pt}\vspace{32pt}
  \begin{center}
    \bfseries \zihao{2} \Titleen
  \end{center}
  \vspace{32pt}\vspace{32pt}\vspace{32pt}\vspace{32pt}
  \begin{center} \zihao{4}
    \begin{tabular}{l@{:}c}
      College     & \ \Collegeen \\
      Subject     & \ \Subjecten \\
      Name        & \ \Nameen    \\
      Directed by & \ \Advisoren
    \end{tabular}
  \end{center}
  \vspace{32pt}\vspace{32pt}
  \begin{center}
    \zihao{-2} NANJING CHINA
  \end{center}
  \clearemptydoublepage
}
% 学术声明
\newcommand{\AcademicStatement}{
  \thispagestyle{empty}
  \vspace{32pt}\vspace{32pt}
  \begin{center}
    \bfseries \songti \zihao{2} 郑\ \ 重\ \ 声\ \ 明
  \end{center}

  \vspace{32pt}

  {\songti \zihao{4} 本人呈交的毕业论文，是在导师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料真实可靠。尽我所知，除文中已经注明引用的内容外，本设计（论文）的研究成果不包含他人享有著作权的内容。对本设计（论文）所涉及的研究工作做出贡献的其他个人和集体，均已在文中以明确的方式标明。本设计（论文）的知识产权归属于培养单位。}

  \vspace{32pt}\vspace{32pt}\vspace{32pt}\vspace{32pt}

  {\noindent \songti \zihao{4} 本人签名：\underline{\DeclareSign} \hspace{3em} 日期：\underline{\DeclareDate}}
  \clearemptydoublepage
}
% 中文摘要
\newcommand{\AbstractzhPage}{
  \thispagestyle{plain}
  \vspace{32pt}
  \begin{center}
    \bfseries \heiti \zihao{-2} 摘\hspace{1em}要
    \phantomsection\addcontentsline{toc}{section}{摘要}
  \end{center}

  \pagenumbering{Roman}

  \vspace{32pt}

  {\songti \zihao{-4} \Abstractzh}

  \vspace{32pt}

  {\bfseries \heiti \zihao{-4} 关键词：}
  {\songti \zihao{-4} \Keywordszh}
  \clearemptydoublepage
}
% 英文摘要
\newcommand{\AbstractenPage}{{
    \pagestyle{plain}
    \vspace{32pt}
    \begin{center}
      \bfseries \zihao{-2} ABSTRACT
      \phantomsection\addcontentsline{toc}{section}{ABSTRACT}
    \end{center}

    \vspace{32pt}

    {\zihao{-4} \Abstracten}

    \vspace{32pt}

    {\bfseries \zihao{-4} Key words:}
    {\zihao{-4} \Keywordsen}
    \clearemptydoublepage
}}
% 目录
\renewcommand{\contentsname}{{\bfseries \heiti \zihao{-2} 目\ \ 录}}

\titlecontents{section}[0pt]{\bfseries \songti \zihao{4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
\titlecontents{subsection}[0pt]{\songti \zihao{-4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
\titlecontents{subsubsection}[0pt]{\songti \zihao{-4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
\let\oldappendix\appendix
\renewcommand{\appendix}{
  \oldappendix
  \titlecontents{section}[0pt]{\bfseries \songti \zihao{4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
}
\newcommand{\ToCPage}{{
    \pagestyle{plain}
    \tableofcontents
    \addcontentsline{toc}{section}{目录}

    \clearemptydoublepage
    \pagenumbering{arabic}
}}
% 章节标题
\AddToHook{cmd/section/before}{\clearpage}
\ctexset{
  section = {
    name = {第,章},
    format = {\centering \bfseries \heiti \zihao{-2}}, numberformat = {\sffamily},
    beforeskip = .8\baselineskip, afterskip = .5\baselineskip
  },
  subsection/format = {\bfseries \heiti \zihao{4}},
  subsubsection = {
    format = {\bfseries \heiti \zihao{-4}},
  numberformat = {\sffamily}},
  appendix/name = {附录}
}
% 上角标引用文献
% \renewcommand{\cite}[1]{\textsuperscript{\zihao{-4} \cite{#1}}}
% 似乎不用这样重新定义，因为 gbt7714 宏包已经设置了引用样式
% 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\small 河海大学本科毕业论文}
\fancyfoot[C]{\thepage}
% 公式、图表
\counterwithin{equation}{section}
\counterwithin{figure}{section}
\counterwithin{table}{section}
% 参考文献
\renewcommand{\refname}{\bfseries \heiti \zihao{-2} 参考文献}
\bibliographystyle{gbt7714-2005-numerical}
