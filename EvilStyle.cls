%%
%% This is file `EvilStyle.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% EvilStyle.dtx  (with options: `class')
%% 
%% Copyright (C) 2019-2019 by Zeping Lee <zepinglee AT gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{EvilStyle}
  [2019/06/01 v0.1 A template framework for Chinese journals]
\RequirePackage{ifxetex}
\RequireXeTeX
\newif\ifEvilStyle@chinese
\DeclareOption{chinese}{\EvilStyle@chinesetrue}
\DeclareOption{english}{\EvilStyle@chinesefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ExecuteOptions{chinese}
\ProcessOptions\relax
\ifEvilStyle@chinese
  \PassOptionsToClass{scheme=chinese}{ctexart}
\else
  \PassOptionsToClass{scheme=plain}{ctexart}
\fi
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[UTF8,a4paper,twoside,twocolumn,zihao=5,linespread=1.08]{ctexart}[2016/05/16]
\@ifclasslater{ctexart}{2016/05/16}{}{
  \ClassError{EvilStyle}{%
    This template requires TeX Live\MessageBreak 2016 or later version}{}
}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{caption}
\RequirePackage{url}
\RequirePackage[numbers,sort&compress]{natbib}
\newcommand\EvilStyle@strifeq{\csname str_if_eq_x:nnTF\endcsname}
\newcommand\EvilStyle@fontset{\csname g__ctex_fontset_tl\endcsname}
\EvilStyle@strifeq{\EvilStyle@fontset}{fandol}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
  \ClassWarningNoLine{EvilStyle}{%
    You are using Fandol font family.\MessageBreak
    Some glyphs may be missing.\MessageBreak
    Please switch to a high-quality font set
  }
}{
  \setmainfont{Times New Roman}
  \setsansfont[Scale=MatchLowercase]{Arial}
  \EvilStyle@strifeq{\EvilStyle@fontset}{mac}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\EvilStyle@strifeq{\EvilStyle@fontset}{mac}{
  \setCJKmainfont[
       UprightFont = * Light,
          BoldFont = Heiti SC Medium,
        ItalicFont = Kaiti SC,
    BoldItalicFont = Kaiti SC Bold,
  ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
       UprightFont = * Light,
          BoldFont = * Bold,
  ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{
  \xeCJKsetup{EmboldenFactor=2}
  \EvilStyle@strifeq{\EvilStyle@fontset}{windows}{
    \IfFileExists{C:/bootfont.bin}{
      \setCJKmainfont[
        BoldFont   = SimHei,
        ItalicFont = KaiTi_GB2312,
      ]{SimSun}
      \setCJKfamilyfont{zhkai}{KaiTi_GB2312}
    }{
      \setCJKmainfont[
        BoldFont   = SimHei,
        ItalicFont = KaiTi
      ]{SimSun}
      \setCJKfamilyfont{zhkai}{KaiTi}
    }
    \setCJKsansfont{SimHei}
    \setCJKfamilyfont{zhsong}{SimSun}
    \setCJKfamilyfont{zhhei}{SimHei}
  }{}
}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\newif\ifEvilStyle@xitsnew
\@ifpackagelater{fontspec}{2017/01/20}{
  \IfFontExistsTF{XITSMath-Regular.otf}{
    \EvilStyle@xitsnewtrue
  }{}
}{}
\ifEvilStyle@xitsnew
  \setmathfont[
    Extension    = .otf,
    BoldFont     = XITSMath-Bold,
    StylisticSet = 8,
  ]{XITSMath-Regular}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{XITSMath-Regular.otf}
\else
  \setmathfont[
    Extension    = .otf,
    BoldFont     = *bold,
    StylisticSet = 8,
  ]{xits-math}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
\fi
\EvilStyle@strifeq{\EvilStyle@fontset}{mac}{
  \newfontfamily\EvilStyle@circlefont{Songti SC Light}
}{
  \EvilStyle@strifeq{\EvilStyle@fontset}{windows}{
    \newfontfamily\EvilStyle@circlefont{SimSun}
  }{
    \ifEvilStyle@xitsnew
      \newfontfamily\EvilStyle@circlefont{XITS-Regular.otf}
    \else
      \newfontfamily\EvilStyle@circlefont{xits-regular.otf}
    \fi
  }
}
\newdimen\bp@
\bp@=1bp
\newcommand\EvilStyle@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\EvilStyle@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{%
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A%
  }%
}
\newcommand\EvilStyle@setdefaultlanguage{%
  \ifEvilStyle@chinese
    \EvilStyle@setchinese
  \else
    \EvilStyle@setenglish
  \fi
}
\geometry{
  paper      = a4paper,
  vmargin    = 2.6cm,
  hmargin    = 2cm,
  headheight = 0.75cm,
  headsep    = 0.15cm,
  twocolumn  = true,
  columnsep  = 0.75cm,
}
\pagestyle{fancy}
\let\sectionmark\@gobble
\renewcommand\headrulewidth{0.4\p@}
\newcommand\EvilStyle@hf@font{\small}
\newcommand\EvilStyle@number{1}
\newcommand\EvilStyle@volume{1}
\fancypagestyle{main}{%
  \fancyhf{}%
  \fancyhead[LO]{\EvilStyle@hf@font \EvilStyle@number{} 期}%
  \fancyhead[CO]{\EvilStyle@hf@font 作者名等：论文题目}%
  \fancyhead[RO,LE]{\EvilStyle@hf@font\thepage}%
  \fancyhead[CE]{\EvilStyle@hf@font 投稿期刊}%
  \fancyhead[RE]{\EvilStyle@hf@font \the\year{} 年}%
}
\pagestyle{main}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[L]{\EvilStyle@hf@font 第 \EvilStyle@volume{} 卷\quad 第 \EvilStyle@number{} 期\\\the\year{} 年 \the\month{} 月}%
  \fancyhead[C]{\EvilStyle@hf@font 投稿期刊\\English Name}%
  \fancyhead[R]{\EvilStyle@hf@font Vol. \EvilStyle@volume\quad No. \EvilStyle@number\\\EvilStyle@doi}%
}
\newcommand\EvilStyle@clc{分类号}
\newcommand\EvilStyle@doi{DOI号}
\newcommand\EvilStylesetup{\kvsetkeys{EvilStyle}}
\kv@set@family@handler{EvilStyle}{\expandafter\gdef\csname EvilStyle@#1\endcsname{#2}}
\newcommand\EvilStyle@author{%
}
\def\@maketitle{%
  \newpage
  \null
  \EvilStyle@make@zh@title
  \EvilStyle@make@en@title
}
\def\EvilStyle@make@zh@title{%
  \vspace*{20\bp@}%
  \begingroup
    \centering
    \heiti\zihao{2}\EvilStyle@title\par
  \endgroup
  \vspace*{7.8\bp@}%
  \begingroup
    \zihao{-5}%
    \textbf{摘\quad 要}\quad\EvilStyle@abstract\par
    关键词\quad\EvilStyle@keywords\par
    中图法分类号\quad\EvilStyle@clc\qquad
    DOI 号\quad\EvilStyle@doi\par
  \endgroup
}
\def\EvilStyle@make@en@title{%
  \vspace*{12\bp@}%
  \begingroup
    \centering
    \bfseries\zihao{4}\@nameuse{EvilStyle@title*}\par
  \endgroup
  \vspace{5\bp@}%
  \begingroup
    \zihao{-5}%
    \textbf{Abstract}\quad\@nameuse{EvilStyle@abstract*}\par
    \textbf{Key words}\quad\@nameuse{EvilStyle@keywords*}\par
  \endgroup
}
\renewenvironment{abstract}{%
    \if@twocolumn
      \section*{\abstractname}%
    \else
      \small
      \begin{center}%
        {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
      \end{center}%
      \quotation
    \fi}
    {\if@twocolumn\else\endquotation\fi}
\ctexset{
  section = {
    format     = \heiti\zihao{4},
    beforeskip = 8\bp@,
    afterskip  = 8\bp@,
  },
  subsection = {
    format     = \heiti\zihao{5},
    beforeskip = 2.625\bp@,
    afterskip  = 2.625\bp@,
  },
  subsubsection = {
    format     = \zihao{5},
    beforeskip = \z@,
    afterskip  = \z@,
  },
}
\sloppy
\raggedbottom
\setlength{\parskip}{\z@}
\urlstyle{same}
\def\UrlBreaks{%
  \do\/%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l%
     \do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L%
     \do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do/\do.\do:%
  \do\*\do\-\do\~\do\'\do\"\do\-}
\Urlmuskip=0mu plus 0.1mu
\renewcommand\topfraction{.85}
\renewcommand\bottomfraction{.7}
\renewcommand\textfraction{.15}
\renewcommand\floatpagefraction{.66}
\renewcommand\dbltopfraction{.66}
\renewcommand\dblfloatpagefraction{.66}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\def\fps@figure{htb}
\def\fps@table{htb}
\DeclareCaptionLabelSeparator{zhspace}{\hspace{\ccwd}}
\captionsetup{
  justification  = centerlast,
  font           = small,
  labelsep       = zhspace,
  skip           = 6\bp@,
  figureposition = bottom,
  tableposition  = top,
}
\DeclareCaptionFont{heiti}{\heiti}
\captionsetup[table]{
  font = {heiti,small},
}
\ifEvilStyle@chinese
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
  \intclockwise\varointclockwise\ointctrclockwise\sumint
  \intbar\intBar\fint\cirfnint\awint\rppolint
  \scpolint\npolint\pointint\sqint\intlarhk\intx
  \intcap\intcup\upint\lowint
}
\AtBeginDocument{%
  \renewcommand\Re{\operatorname{Re}}%
  \renewcommand\Im{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\newcommand\square{\mdlgwhtsquare}
\newcommand\upe{\symup{e}}
\newcommand\upi{\symup{i}}
\newcommand\dif{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\newtheoremstyle{EvilStyle}
  {\z@}{\z@}
  {}{2\ccwd}
  {\bfseries}{.}
  {\ccwd}{}
\theoremstyle{EvilStyle}
\newcommand\EvilStyle@assertionname{断言}
\newcommand\EvilStyle@assumptionname{假设}
\newcommand\EvilStyle@axiomname{公理}
\newcommand\EvilStyle@corollaryname{推论}
\newcommand\EvilStyle@definitionname{定义}
\newcommand\EvilStyle@examplename{例}
\newcommand\EvilStyle@lemmaname{引理}
\newcommand\EvilStyle@proofname{证明}
\newcommand\EvilStyle@propositionname{命题}
\newcommand\EvilStyle@remarkname{注}
\newcommand\EvilStyle@theoremname{定理}
\newtheorem{theorem}             {\EvilStyle@theoremname}
\newtheorem{assertion}  [theorem]{\EvilStyle@assertionname}
\newtheorem{axiom}      [theorem]{\EvilStyle@axiomname}
\newtheorem{corollary}  [theorem]{\EvilStyle@corollaryname}
\newtheorem{lemma}      [theorem]{\EvilStyle@lemmaname}
\newtheorem{proposition}[theorem]{\EvilStyle@propositionname}
\newtheorem{assumption}          {\EvilStyle@assumptionname}
\newtheorem{definition}          {\EvilStyle@definitionname}
\newtheorem{example}             {\EvilStyle@examplename}
\newtheorem*{remark}             {\EvilStyle@remarkname}
\DeclareRobustCommand{\qed}{证毕.}
\renewenvironment{proof}[1][\proofname]{\par
  \textbf{\proofname}.\quad
}{%
  \par\raggedleft\qed\par
}
\renewcommand\bibfont{\fontsize{7.5\bp@}{14\bp@}\linespread{1}\selectfont}
\renewcommand\@biblabel[1]{[#1]\hfill}
\newcommand\EvilStyle@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\EvilStyle@atendpackage{hyperref}{
  \hypersetup{
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    linktoc            = all,
    unicode            = true,
    psdextra           = true,
    hidelinks,
  }
  \AtBeginDocument{%
    \hypersetup{
      pdftitle  = \@title,
      pdfauthor = \@author,
    }%
  }
  \pdfstringdefDisableCommands{
    \let\\\@empty
    \let\hspace\@gobble
  }
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmugreek}%
  }
  \ifEvilStyle@chinese
    \def\equationautorefname~#1\null{公式~(#1)\null}
    \def\footnoteautorefname{脚注}
    \def\itemautorefname~#1\null{第~#1 项\null}
    \def\figureautorefname{图}
    \def\tableautorefname{表}
    \def\appendixautorefname{附录}
    \def\sectionautorefname~#1\null{第~#1 节\null}
    \def\subsectionautorefname~#1\null{第~#1 节\null}
    \def\subsubsectionautorefname~#1\null{第~#1 节\null}
    \def\theoremautorefname{定理}
    \def\HyRef@autopageref#1{\hyperref[{#1}]{第~\pageref*{#1} 页}}
  \fi
}
\EvilStyle@atendpackage{siunitx}{
  \sisetup{
    group-minimum-digits = 4,
    separate-uncertainty = true,
    inter-unit-product   = \ensuremath{{}\cdot{}},
  }
  \ifEvilStyle@chinese
    \sisetup{
      list-final-separator = { 和 },
      list-pair-separator  = { 和 },
      range-phrase         = {～},
    }
  \fi
}
