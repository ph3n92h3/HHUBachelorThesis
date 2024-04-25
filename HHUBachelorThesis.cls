\ProvidesClass{HHUBachelorThesis}\PassOptionsToPackage{AutoFakeBold, AutoFakeSlant}{xeCJK}
\LoadClass[zihao = -4]{ctexart}

\usepackage[font={small, sf}]{caption}
\usepackage{fancyhdr}
\usepackage{fontspec}
\usepackage{gbt7714}
\usepackage[
    paper = a4paper,
    top = 2.5cm,
    bottom = 2.5cm,
    left = 3cm,
    right = 3cm,
    headheight = 1.5cm,
    footskip = 1.75cm
]{geometry}
\usepackage{graphicx}
\usepackage{titletoc}

\setmainfont{Times New Roman}
\setsansfont{Arial}
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
\newcommand{\abstractzh}[1]{\def\Abstractzh{#1}}
\newcommand{\keywordszh}[1]{\def\Keywordszh{#1}}
\newcommand{\abstracten}[1]{\def\Abstracten{#1}}
\newcommand{\keywordsen}[1]{\def\Keywordsen{#1}}

% 中文封面
\newcommand{\ChineseCover}{
    \thispagestyle{empty}
    {\heiti \zihao{5} \hfill 学号 \underline{\StudentNumber}

        \hfill 年级 \underline{\hspace{10pt}\Grade\hspace{9pt}}}

    \vspace{32pt}
    \begin{figure}[h]
        \centering
        \includegraphics[width = \textwidth]{./HHULogo.png}
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
    \clearpage
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
            College     & \Collegeen \\
            Subject     & \Subjecten \\
            Name        & \Nameen    \\
            Directed by & \Advisoren
        \end{tabular}
    \end{center}
    \vspace{32pt}\vspace{32pt}
    \begin{center}
        \zihao{-2} NANJING CHINA
    \end{center}
    \clearpage
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

    {\songti \zihao{4} 本人签名：\underline{\hspace{6em}} \hspace{3em} 日期：\underline{\hspace{6em}}}
    \clearpage\shipout\null % 空白页
}
% 中文摘要
\newcommand{\AbstractzhPage}{
    \thispagestyle{empty}
    \vspace{32pt}
    \begin{center}
        \bfseries \heiti \zihao{-2} 摘\hspace{1em}要
    \end{center}
    \addcontentsline{toc}{section}{摘要}

    \renewcommand{\thepage}{\Roman{page}}
    \setcounter{page}{1}

    \vspace{32pt}

    {\songti \zihao{-4} \Abstractzh}

    \vspace{32pt}

    {\bfseries \heiti \zihao{-4} 关键词：}
    {\songti \zihao{-4} \Keywordszh}
    \clearpage
}
% 英文摘要
\newcommand{\AbstractenPage}{
    \thispagestyle{empty}
    \vspace{32pt}
    \begin{center}
        \bfseries \zihao{-2} ABSTRACT
    \end{center}
    \addcontentsline{toc}{section}{ABSTRACT}

    \vspace{32pt}

    {\zihao{-4} \Abstracten}

    \vspace{32pt}

    {\bfseries \zihao{-4} Key words:}
    {\zihao{-4} \Keywordsen}
    \clearpage
}
% 目录
\renewcommand{\contentsname}{{\bfseries \heiti \zihao{-2} 目\ \ 录}}

\titlecontents{section}[0pt]{\bfseries \songti \zihao{4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
\titlecontents{subsection}[0pt]{\songti \zihao{-4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
\titlecontents{subsubsection}[0pt]{\songti \zihao{-4}}{\thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
\let\oldappendix\appendix
\renewcommand{\appendix}{
    \oldappendix
    \titlecontents{section}[0pt]{\bfseries \songti \zihao{4}}{附录 \thecontentslabel\ \ }{}{\titlerule*{.}\contentspage}
}

\newcommand{\ToCPage}{
    \thispagestyle{empty}
    \tableofcontents
    \addcontentsline{toc}{section}{目录}

    \clearpage\shipout\null % 空白页
    \renewcommand{\thepage}{\arabic{page}}
    \setcounter{page}{1}
}
% 章节标题
\ctexset{
    section = {
      name = {第,章},
      format = {\centering \bfseries \heiti \zihao{-2}}, numberformat = {\sffamily},
      beforeskip = .8\baselineskip, afterskip = .5\baselineskip
     },
    subsection/format = {\bfseries \heiti \zihao{4}},
    subsubsection = {
            format = {\bfseries \heiti \zihao{-4}},
            numberformat = {\sffamily}}
}
% 上角标引用文献
% \renewcommand{\cite}[1]{\textsuperscript{\zihao{-4} \cite{#1}}}
% 似乎不用这样重新定义，因为 gbt7714 宏包已经设置了引用样式
% 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\small 河海大学本科毕业论文}
\fancyfoot[C]{\thepage}
\let\oldbibliography\bibliography
\renewcommand{\bibliography}[1]{
    \clearpage\fancyhead{}\renewcommand{\headrulewidth}{0pt}
    \oldbibliography{#1}
}
% 公式、图表
\counterwithin{equation}{section}
\counterwithin{figure}{section}
\counterwithin{table}{section}
% 参考文献
\renewcommand{\refname}{\heiti \zihao{-2} 参考文献}
\bibliographystyle{gbt7714-2005-numerical}
