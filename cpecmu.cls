%%
%% This is file `cpecmu.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cpecmu.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from cpecmu.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file cpecmu.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% Document class `cpecmu' to use with LaTeX 2e.
%% Based on `cornell' class.  The following is from the file `cornell.dtx':
%%   Based loosely on cornell thesis document class.
%%   Made available without any warranty, express or implied.
%%
%% $Id$
\NeedsTeXFormat{LaTeX2e}[2020/02/02]
\ProvidesClass{cpecmu}
[2020/08/10 v0.1.1
  Computer Engineering, Chiang Mai University senior report class]
\newif\ifcpe
\DeclareOption{cpe}{\cpetrue}
\DeclareOption{isne}{\cpefalse}
\ExecuteOptions{cpe}
\newif\ifproject
\DeclareOption{project}{\projecttrue}
\DeclareOption{survey}{\projectfalse}
\ExecuteOptions{project}
\DeclareOption{10pt}{%
 \iffinal%
  \OptionNotUsed%
  \ClassWarningNoLine{cpecmu}{Font size 10pt not allowed; using 12pt}%
 \else%
  \PassOptionsToClass{10pt}{report}%
 \fi%
}
\DeclareOption{11pt}{%
 \iffinal%
  \OptionNotUsed%
  \ClassWarningNoLine{cpecmu}{Font size 11pt not allowed; using 12pt}%
 \else%
  \PassOptionsToClass{11pt}{report}%
 \fi
}
\newcommand{\prelim@contents}[2][section]{\addcontentsline{toc}{#1}{#2}}
\DeclareOption{tocprelim}{%
  % included for backwards compatibility only.
}
\DeclareOption{notocprelim}{%
  \renewcommand{\prelim@contents}[1]{}
}
\providecommand\phantomsection{}
\DeclareOption{draft}{%
  \let\ifdraft\iftrue%
  \let\iffinal\iffalse%
}
\DeclareOption{final}{%
  \let\ifdraft\iffalse%
  \let\iffinal\iftrue%
}
\DeclareOption{semifinal}{%
  \let\ifdraft\iftrue%
  \let\iffinal\iffalse%
  \PassOptionsToClass{draft}{report}%
}
\newif\ifglossary\glossaryfalse
\DeclareOption{glossary}{\glossarytrue}
\newif\ifindex\indexfalse
\DeclareOption{idx}{\indextrue}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{report}%
}
\ExecuteOptions{final}
\ProcessOptions
\iffinal%
  \PassOptionsToClass{12pt}{report}%
\fi
\PassOptionsToClass{a4paper}{report}%
\LoadClass{report}[2019/12/20]%
\def\@makechapterhead#1{%
  \begin{center}%
    \singlespacing
    \@titlesize\bfseries
    \@chapapp\space \thechapter \\
    #1
  \end{center}%
  \par\nobreak
}
\def\@makeschapterhead#1{%
  \begin{center}%
    \@titlesize\bfseries #1
  \end{center}%
  \par\nobreak
}
\ifcpe
  \renewcommand\appendix{\par
    \cleardoublepage
    \thispagestyle{empty}
    \vspace*{\fill}
    \begin{center}
      \huge\bf\appendixname
      \vspace*{1in}
    \end{center}
    \vspace*{\fill}
    \cleardoublepage
    \setcounter{chapter}{0}%
    \setcounter{section}{0}%
    \gdef\@chapapp{\appendixname}%
    \gdef\thechapter{\@thaiAlph\c@chapter}}
\fi
\renewcommand{\footnotesize}{\normalsize}
\renewcommand{\@makefntext}[1]{%
  \parindent 1em%
  \noindent
  \footnotespacing
  \hbox to 1.8em{\hss\@makefnmark}#1
  \par\normalspacing
}
\renewcommand{\defaultscriptratio}{.75}
\renewcommand{\defaultscriptscriptratio}{.6}
\setlength\headsep{25\p@}
\if@twocolumn
\else
  \setlength\topmargin{-0.4in}
  \setlength\headheight{0.16667in}
  \setlength\headsep{0.33333in}
  \setlength\textheight{9.4in}
  \setlength\footskip{0.5in}
  \setlength\oddsidemargin{.5in}
  \setlength\evensidemargin{0in}
  \setlength\textwidth{5.8in}
  \setlength\marginparsep{0.1in}
  \setlength\marginparwidth{1.3in}
\fi
\newcommand{\ps@cpecmu}{%
\def\@oddhead{}
\def\@oddfoot{\hfil\thepage\hfil}%
\def\@evenhead{}%
\def\@evenfoot{\@oddfoot}%
\def\chaptermark##1{}%
\def\sectionmark##1{}%
}
\raggedbottom
\renewcommand{\contentsname}{Table of Contents}
\newcommand{\@titlesize}{\fontsize{14}{18}\selectfont}
\newcommand{\@subtitlesize}{\fontsize{12}{24}\selectfont}
\newcommand{\@authorsize}{\@titlesize}
\newcommand{\titlesize}[1]{\renewcommand{\@titlesize}{#1}}
\newcommand{\subtitlesize}[1]{\renewcommand{\@subtitlesize}{#1}}
\newcommand{\authorsize}[1]{\renewcommand{\@authorsize}{#1}}

\newcommand{\@projectNo}{??}
\newcommand{\projectNo}[1]{\renewcommand{\@projectNo}{#1}}

\newcommand{\@titleTH}{ชื่อโครงงาน}
\newcommand{\@titleEN}{Project Name}
\newcommand{\titleTH}[1]{\renewcommand{\@titleTH}{#1}}
\newcommand{\titleEN}[1]{\renewcommand{\@titleEN}{#1}}

\newcounter{@numauthors}\setcounter{@numauthors}{0}
\renewcommand{\author}[3]{%
  \stepcounter{@numauthors}%
  \expandafter\gdef
    \csname @authorTH@\romannumeral\number\value{@numauthors}\endcsname
    {#1}%
  \expandafter\gdef
    \csname @authorEN@\romannumeral\number\value{@numauthors}\endcsname
    {#2}%
  \expandafter\gdef
    \csname @studentID@\romannumeral\number\value{@numauthors}\endcsname
    {#3}%
}
\newif\if@printid\@printidtrue
\newcounter{@authorIdx}
\def\@listauthors#1#2#3{%
  \stepcounter{@authorIdx}%
  \csname @author#1@\romannumeral\number\value{@authorIdx}\endcsname%
  #2%
  \if@printid%
    \csname @studentID@\romannumeral\number\value{@authorIdx}\endcsname%
  \fi
  \ifnum\value{@authorIdx}<\value{@numauthors}%
    #3%
    \@listauthors{#1}{#2}{#3}%
  \fi
}
\newcommand{\@authorsTH}[2]{%
  \setcounter{@authorIdx}{0}%
  \@listauthors{TH}{#1}{#2}%
}
\newcommand{\@authorsEN}[2]{%
  \setcounter{@authorIdx}{0}%
  \@listauthors{EN}{#1}{#2}%
}

\newcommand{\@acadyearBE}{2563}
\newcommand{\@acadyearAD}{2020}
\newcounter{@acadyear}
\newcommand{\acadyear}[1]{%
  \renewcommand{\@acadyearAD}{#1}
  \setcounter{@acadyear}{#1}
  \addtocounter{@acadyear}{543}
  \renewcommand{\@acadyearBE}{\the@acadyear}
}
\newcommand{\@degreefieldAbbrTH}{\ifcpe วศ.คพ.\else วศ.สค.\fi}
\newcommand{\@degreefieldAbbrEN}{\ifcpe CPE\else ISNE\fi}
\newcommand{\@degreefieldTH}{%
  \ifcpe%
    วิศวกรรมคอมพิวเตอร์%
  \else%
    วิศวกรรมระบบสารสนเทศและเครือข่าย%
  \fi%
}
\newcommand{\@degreefieldEN}{%
  \ifcpe%
    Computer Engineering%
  \else%
    Information Systems and Network Engineering%
  \fi%
}
\ifcpe%
  \RequirePackage{thaixelatex}
\else%
  \RequirePackage[english]{thaixelatex}
\fi
\newcommand{\@maketitleTH}{%
  \begin{titlepage}%
    \begin{center}%
      \hrule height 0.5in width 0pt % force vertical space at top
      \@titlesize\bf
      โครงงานเลขที่ \@degreefieldAbbrTH~\@projectNo/\@acadyearBE
      \par\vspace*{0.5in}\par
      เรื่อง
      \par\vspace*{0.5in}\par
      \@titleTH
      \par\vspace*{0.75in}\par
      โดย
      \par\vspace*{0.75in}\par
      {\@authorsize%
      \begin{tabular}{@{}cl@{}}
      \@authorsTH{& รหัส~}{\\}%
      \end{tabular}%
      }%
      \vfill
      \ifproject%
        โครงงานนี้ \\
        เป็นส่วนหนึ่งของการศึกษาตามหลักสูตรปริญญาวิศวกรรมศาสตรบัณฑิต \\
      \else%
        รายงานนี้เป็นส่วนหนึ่งของวิชาสำรวจเพื่อโครงงาน \\
        ตามหลักสูตรปริญญาวิศวกรรมศาสตรบัณฑิต \\
      \fi
      ภาควิชาวิศวกรรมคอมพิวเตอร์ \\
      คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเชียงใหม่ \\
      ปีการศึกษา~\@acadyearBE
    \end{center}
    \vspace{0.25in}
  \end{titlepage}
}
\newcommand{\@maketitleEN}{%
  \begin{titlepage}%
    \begin{center}%
      \hrule height 0.5in width 0pt % force vertical space at top
      \@titlesize\bf
      PROJECT No. \@degreefieldAbbrEN~\@projectNo/\@acadyearBE
      \par\vspace*{1in}\par
      \@titleEN
      \par\vspace*{1.5in}\par
      {\@authorsize%
      \begin{tabular}{@{}cl@{}}
      \@authorsEN{&}{\\}%
      \end{tabular}%
      }%
      \vfill
      \ifproject%
        A Project Submitted in Partial Fulfillment of Requirements \\
        for the Degree of Bachelor of Engineering \\
      \else%
        A Report Submitted in Partial Fulfillment of Project Survey Course \\
        as Required by the Degree of Bachelor of Engineering \\
      \fi
      Department of Computer Engineering \\
      Faculty of Engineering \\
      Chiang Mai University \\
      \@acadyearAD
    \end{center}
    \vspace{0.25in}
  \end{titlepage}
}
\renewcommand{\maketitle}{%
  \typeout{Title page}
  \pagenumbering{roman} % title page is counted but not numbered
  \pagestyle{empty}
  \ifcpe%
    \@maketitleTH
    \@maketitleEN
  \else
    \@maketitleEN
    \@maketitleTH
  \fi
}

\renewenvironment{titlepage}{%
  \singlespacing
}{%
  \normalspacing\clearpage
}
\newcommand\cpefaculty[3]{%
  \expandafter\gdef\csname @cpefacultyTH@#1\endcsname{#2}%
  \expandafter\gdef\csname @cpefacultyEN@#1\endcsname{#3}%
}
\newcommand\deptChair[1]{
  \@ifundefined{@cpefacultyTH@#1}
  {\ClassWarningNoLine{cpecmu}{Unknown CPE faculty: #1}}{%
    \gdef\@deptChairTH{\csname @cpefacultyTH@#1\endcsname}%
    \gdef\@deptChairEN{\csname @cpefacultyEN@#1\endcsname}%
  }
}
\RequirePackage{cpecmu-faculty}

\newcommand{\@advisorTH}{(waiting for an advisor)}
\newcommand{\@advisorEN}{(waiting for an advisor)}
\newcommand\advisor[2]{%
  \gdef\@advisorTH{#1}%
  \gdef\@advisorEN{#2}%
}
\newcommand\cpeadvisor[1]{%
  \@ifundefined{@cpefacultyTH@#1}
  {\ClassWarningNoLine{cpecmu}{Unknown CPE faculty: #1}}
  {\advisor
    {\csname @cpefacultyTH@#1\endcsname}
    {\csname @cpefacultyEN@#1\endcsname}
  }
}
\newcounter{@numcommittee}\setcounter{@numcommittee}{0}
\newcommand{\committee}[2]{%
  \stepcounter{@numcommittee}%
  \expandafter\gdef
    \csname @committeeTH@\romannumeral\number\value{@numcommittee}\endcsname
    {#1}%
  \expandafter\gdef
    \csname @committeeEN@\romannumeral\number\value{@numcommittee}\endcsname
    {#2}%
}
\newcommand\cpecommittee[1]{%
  \@ifundefined{@cpefacultyTH@#1}
  {\ClassWarningNoLine{cpecmu}{Unknown CPE faculty: #1}}
  {\committee
    {\csname @cpefacultyTH@#1\endcsname}
    {\csname @cpefacultyEN@#1\endcsname}
  }
}
\newcounter{@committeeIdx}
\def\@listcommittee#1#2#3{%
  \stepcounter{@committeeIdx}%
  #2%
  \csname @committee#1@\romannumeral\number\value{@committeeIdx}\endcsname%
  #3%
  \ifnum\value{@committeeIdx}<\value{@numcommittee}%
    \@listcommittee{#1}{#2}{#3}%
  \fi
}

\RequirePackage{tabularx}
\RequirePackage[normalem]{ulem}
\newcommand{\@summaryTH}{%
  \setlength\parindent{0pt}
  \begin{tabularx}{\linewidth}{@{}l@{\quad: }X@{}}
    หัวข้อโครงงาน & \@titleTH \\
    & \@titleEN \\
    โดย &
    \begin{tabular}[t]{@{}ll@{}}
      \@authorsTH{& รหัส~}{\\}
    \end{tabular}
    \\
    ภาควิชา & วิศวกรรมคอมพิวเตอร์ \\
    อาจารย์ที่ปรึกษา & \@advisorTH \\
    ปริญญา & วิศวกรรมศาสตรบัณฑิต \\
    สาขา & \@degreefieldTH \\
    ปีการศึกษา & \@acadyearBE
  \end{tabularx}
  \par\bigskip\par
  \hrule height 2pt
}
\newcommand{\@summaryEN}{%
  \setlength\parindent{0pt}
  \begin{tabularx}{\linewidth}{@{}l@{\quad: }X@{}}
    Project Title & \@titleEN \\
    Name &
    \begin{tabular}[t]{@{}ll@{}}
      \@authorsEN{& }{\\}
    \end{tabular}
    \\
    Department & Computer Engineering \\
    Project Advisor & \@advisorEN \\
    Degree & Bachelor of Engineering \\
    Program & \@degreefieldEN \\
    Academic Year & \@acadyearAD
  \end{tabularx}
  \par\bigskip\par
  \hrule height 2pt
}

\newcommand{\makesignature}{%
  \cleardoublepage
  \pagenumbering{\ifcpe thaialph\else alph\fi}
                      % make sure all the page numbers in the
                      % PDF document are unique, if PDF page
                      % numbers generated
  \pagestyle{plain}
  \setcounter{page}{1}
  \bgroup
  \ifcpe\@summaryTH\else\@summaryEN\fi%
  \par\vspace*{1cm}\par
  \ifcpe%
    ภาควิชาวิศวกรรมคอมพิวเตอร์ คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเชียงใหม่
    ได้อนุมัติให้โครงงานนี้เป็นส่วน\-หนึ่งของการศึกษาตามหลักสูตรปริญญาวิศวกรรมศาสตรบัณฑิต
    (สาขา\@degreefieldTH)
  \else%
    The Department of Computer Engineering, Faculty of Engineering,
    Chiang Mai University has approved this project to be part of the
    degree of Bachelor of Engineering (\@degreefieldEN)
  \fi
  \begin{flushright}
    \begin{tabular}{@{}cl@{}}
      \\[1cm]
      \makebox[3.5in]{\dotfill} &
      % \dotuline{\hspace{3.5in}} &
        \ifcpe หัวหน้าภาควิชาวิศวกรรมคอมพิวเตอร์\else Department chair\fi \\
      (\ifcpe\@deptChairTH\else\@deptChairEN\fi)
    \end{tabular}
  \end{flushright}
  \par\bigskip\par
  \ifcpe คณะกรรมการสอบโครงงาน\else Project examination committee:\fi
  \begin{flushright}
    \begin{tabular}{@{}cl@{}}
      \\[1cm]
      \makebox[3.5in]{\dotfill} &
  %     \dotuline{\hspace*{3.5in}} &
        \ifcpe ประธานกรรมการ\else Main advisor / Chair\fi \\
      (\ifcpe\@advisorTH\else\@advisorEN\fi)
      \setcounter{@committeeIdx}{0}%
      \@listcommittee{\ifcpe TH\else EN\fi}{\\[1cm]
      \makebox[3.5in]{\dotfill} & \ifcpe กรรมการ\else Committee member\fi \\
      % \dotuline{\hspace*{3.5in}} & \ifcpe กรรมการ\else Committee member\fi \\
        (}
      {)}%
    \end{tabular}
  \end{flushright}
  \egroup
}
\newcommand\@abstract@begin[2]{%
  \cleardoublepage
  \typeout{Abstract}
  {\csname @summary#1\endcsname}%
  \par\vspace*{5mm}\par
  \phantomsection
  \prelim@contents{#2}
  \begin{center}%
    \@titlesize\MakeUppercase{\bfseries #2}
  \end{center}%
}
\newenvironment{abstractTH}{\@abstract@begin{TH}{บทคัดย่อ}}{\cleardoublepage}
\renewenvironment{abstract}{\@abstract@begin{EN}{Abstract}}{\cleardoublepage}
\newenvironment{dedication}{%
  \phantomsection
  \prelim@contents{Dedication}
  \null\vfill
  \begin{center}
}{
  \end{center}
  \vfill\null
  \clearpage
}
\newcommand\strmnth[1]{%
  \ifcpe%
    \ifcase#1%
    \or ม.ค.% 1
    \or ก.พ.% 2
    \or มี.ค.% 3
    \or เม.ย.% 4
    \or พ.ค.% 5
    \or มิ.ย.% 6
    \or ก.ค.% 7
    \or ส.ค.% 8
    \or ก.ย.% 9
    \or ต.ค.% 10
    \or พ.ย.% 11
    \or ธ.ค.% 12
    \fi
  \else%
    \ifcase#1%
    \or Jan% 1
    \or Feb% 2
    \or Mar% 3
    \or Apr% 4
    \or May% 5
    \or Jun% 6
    \or Jul% 7
    \or Aug% 8
    \or Sep% 9
    \or Oct% 10
    \or Nov% 11
    \or Dec% 12
    \fi
  \fi
}
\newcommand\strmonth[1]{%
  \ifcpe%
    \ifcase#1%
    \or มกราคม% 1
    \or กุมภาพันธ์% 2
    \or มีนาคม% 3
    \or เมษายน% 4
    \or พฤษภาคม% 5
    \or มิถุนายน% 6
    \or กรกฎาคม% 7
    \or สิงหาคม% 8
    \or กันยายน% 9
    \or ตุลาคม% 10
    \or พฤศจิกายน% 11
    \or ธันวาคม% 12
    \fi
  \else%
    \ifcase#1%
    \or January% 1
    \or February% 2
    \or March% 3
    \or April% 4
    \or May% 5
    \or June% 6
    \or July% 7
    \or August% 8
    \or September% 9
    \or October% 10
    \or November% 11
    \or December% 12
    \fi
  \fi
}
\newcommand\Day[3]{%
  \setcounter{@plan@y}{#1}%
  \ifcpe\addtocounter{@plan@y}{543}\fi%
  #3 \strmonth{#2} \the@plan@y%
}
\newcommand\acksign[3]{%
  \@printidfalse%
  \setcounter{@authorIdx}{0}%
  \bigskip\par\noindent%
  \begin{tabularx}{\linewidth}{@{\hspace*{2.5in}}>{\centering}X@{}}
    \@listauthors{\ifcpe TH\else EN\fi}{\\}{}
    \Day{#1}{#2}{#3}
  \end{tabularx}
  \par%
  \@printidtrue%
}
\newenvironment{acknowledgments}{%
  \pagestyle{plain}
  \chapter*{\ifcpe กิตติกรรมประกาศ\else Acknowledgments\fi}
  \prelim@contents{\ifcpe กิตติกรรมประกาศ\else Acknowledgments\fi}
}{%
  \clearpage
}
\newcommand{\contentspage}{%
  \cleardoublepage
  \pagestyle{plain}
  \listspacing{toc}
  \phantomsection
  \prelim@contents{\contentsname}
  \tableofcontents
  \normalspacing
  \clearpage
}

\newcommand{\figurelistpage}{%
  \pagestyle{plain}
  \listspacing{fig}
  \phantomsection
  \prelim@contents{\listfigurename}
  \listoffigures
  \normalspacing
  \clearpage
}

\newcommand{\tablelistpage}{%
  \pagestyle{plain}
  \listspacing{tab}
  \phantomsection
  \prelim@contents{\listtablename}
  \listoftables
  \normalspacing
  \clearpage
}
\newcommand{\abbrlist}{%
  \pagestyle{plain}
  \listspacing{abbr}
  \chapter*{\ifcpe รายการคำย่อ\else List of Abbreviations\fi}
  \prelim@contents{\ifcpe รายการคำย่อ\else List of Abbreviations\fi}
}

\newcommand{\symlist}{%
  \pagestyle{plain}
  \listspacing{sym}
  \chapter*{\ifcpe รายการสัญลักษณ์\else List of Symbols\fi}
  \prelim@contents{\ifcpe รายการสัญลักษณ์\else List of Symbols\fi}
}

\newcommand{\preface}{%
  \pagestyle{plain}
  \listspacing{pref}
  \chapter*{\ifcpe คำนำ\else Preface\fi}
  \prelim@contents{\ifcpe คำนำ\else Preface\fi}
}
\RequirePackage{titlesec}
\titleformat*{\section}{\bfseries}
\titleformat*{\subsection}{\bfseries}
\titleformat*{\subsubsection}{\bfseries}
\RequirePackage[final]{graphicx}
\RequirePackage[table,x11names]{xcolor}
\RequirePackage{rotating}

\newcounter{@plan@sm}
\newcounter{@plan@sy}
\newcounter{@plan@em}
\newcounter{@plan@ey}
\newcounter{@plan@m}
\newcounter{@plan@y}
\newcounter{@plan@colscount}
\newenvironment{plan}[4]{%
  \setcounter{@plan@sm}{#1}
  \setcounter{@plan@sy}{#2}
  \setcounter{@plan@em}{#3}
  \setcounter{@plan@ey}{#4}
  \def\@plan@numcols{%
    \stepcounter{@plan@colscount}
    \ifnum\value{@plan@y}=\value{@plan@ey}%
      \ifnum\value{@plan@m}<\value{@plan@em}%
        \stepcounter{@plan@m}%
        \@plan@numcols%
      \fi
    \else%
      \stepcounter{@plan@m}%
      \ifnum\value{@plan@m}=13%
          \stepcounter{@plan@y}%
          \setcounter{@plan@m}{1}%
      \fi
      \@plan@numcols%
    \fi
  }
  \def\@plan@genheader{%
    &
    \begin{sideways}
      \ifcpe\addtocounter{@plan@y}{543}\fi
      \strmnth{\value{@plan@m}} \the@plan@y\hspace*{1ex}%
      \ifcpe\addtocounter{@plan@y}{-543}\fi
    \end{sideways}
    \ifnum\value{@plan@y}=\value{@plan@ey}%
      \ifnum\value{@plan@m}<\value{@plan@em}%
        \stepcounter{@plan@m}%
        \@plan@genheader%
      \fi
    \else%
      \stepcounter{@plan@m}%
      \ifnum\value{@plan@m}=13%
          \stepcounter{@plan@y}%
          \setcounter{@plan@m}{1}%
      \fi
      \@plan@genheader%
    \fi
  }
  \setcounter{@plan@m}{\value{@plan@sm}}
  \setcounter{@plan@y}{\value{@plan@sy}}
  \setcounter{@plan@colscount}{0}
  \@plan@numcols
  \noindent
  \tabularx{\linewidth}{|X|*{\the@plan@colscount}{c|}}
  \hline
  \bf\ifcpe ขั้นตอนการดำเนินงาน\else Task\fi
  \setcounter{@plan@m}{\value{@plan@sm}}
  \setcounter{@plan@y}{\value{@plan@sy}}
  \@plan@genheader
  \\\hline
}{%
  \endtabularx
}
\newcommand\planitem[6][gray]{%
  \gdef\@plan@paint{%
    &
    \ifnum\value{@plan@y}<#3\else%
    \ifnum#3=\value{@plan@y}%
      % sy = y
      \ifnum#5<\value{@plan@y}\else%
      \ifnum\value{@plan@y}=#5%
        % sy = y = ey
        \ifnum\value{@plan@m}<#2\else%
        \ifnum#4<\value{@plan@m}\else%
          % sm <= m <= em
          \cellcolor{#1}
        \fi
        \fi
      \else%
        % sy = y < ey
        \ifnum\value{@plan@m}<#2\else%
          % sm <= m
          \cellcolor{#1}
        \fi
      \fi
      \fi
    \else
      % sy < y
      \ifnum#5<\value{@plan@y}\else%
      \ifnum\value{@plan@y}=#5%
        % sy < y = ey
        \ifnum#4<\value{@plan@m}\else%
          % m <= em
          \cellcolor{#1}
        \fi
      \else%
        % sy < y < ey
        \cellcolor{#1}
      \fi
      \fi
    \fi
    \fi
    \ifnum\value{@plan@y}=\value{@plan@ey}%
      \ifnum\value{@plan@m}<\value{@plan@em}%
        \stepcounter{@plan@m}%
        \@plan@paint%
      \fi
    \else%
      \stepcounter{@plan@m}%
      \ifnum\value{@plan@m}=13%
          \stepcounter{@plan@y}%
          \setcounter{@plan@m}{1}%
      \fi
      \@plan@paint%
    \fi
  }
  #6%
  \setcounter{@plan@m}{\value{@plan@sm}}
  \setcounter{@plan@y}{\value{@plan@sy}}
  \@plan@paint%
  \\\hline
}
\addto\captionsenglish{%
  \renewcommand{\bibname}{References}%
}
\let\cpecmu@bibliography=\bibliography
\def\bibliography#1{%
  \cleardoublepage
  \listspacing{bib}
  \phantomsection
  \prelim@contents[chapter]{\bibname}
  \cpecmu@bibliography{#1}
}
\newenvironment{biosketch}{%
  \typeout{Vita}
  \chapter*{\ifcpe ประวัติผู้เขียน\else Biographical Sketch\fi}
  \prelim@contents[chapter]{\ifcpe ประวัติผู้เขียน\else Biographical Sketch\fi}
}{%
  \clearpage
}
\AtBeginDocument{%
  \let\cpecmu@thebibliography=\thebibliography
  \renewcommand\thebibliography[1]{%
    \cpecmu@thebibliography{#1}%
    \setlength{\itemsep}{18pt}%
    \setlength{\parsep}{0pt}%
    \setlength{\parskip}{0pt}%
  }%
}
\ifglossary
  \RequirePackage[toc,numberline]{glossaries}
  \makeglossaries

  \newcommand{\glossarypage}{%
    \pagestyle{plain}
    \listspacing{glossary}
    \printglossaries
  }
\else
  \newcommand\gls[1]{#1}
\fi

\ifindex
  \RequirePackage{makeidx}
  \makeindex

  \newcommand{\indexpage}{%
    \pagestyle{plain}
    \listspacing{index}
    \printindex
  }
\else
  \renewcommand\index[1]{}
\fi
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xiipt{12}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \parsep 5\p@  \@plus2.5\p@ \@minus\p@
               \topsep 10\p@ \@plus4\p@   \@minus6\p@
               \itemsep \z@  \@plus2.5\p@ \@minus\p@}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\small{%
   \@setfontsize\small\@xipt{11}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 9\p@ \@plus3\p@ \@minus5\p@
               \parsep 4.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \z@  \@plus2\p@ \@minus\p@}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xpt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\newcommand{\realsinglespacing}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{1.0}\CS}
\def\singlespacing{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{1.208333}\CS}
\newcommand{\singlespacingplus}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{1.5}\CS}
\def\doublespacing{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{2}\CS}
\newcommand{\realdoublespacing}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{2}\CS}
\newcommand{\normalspacing}{\singlespacingplus}
\newcommand{\footnotespacing}{\singlespacing}
\newcommand{\listspacing}[1] % extra arg is extensibility hook
  {\singlespacing}
\newcommand{\changespacing}[2]{%
  \renewcommand{#1}{%
    \let\CS=\@currsize\renewcommand{\baselinestretch}{#2}\CS}%
}
\newcommand{\changenormalspacing}[1]{\renewcommand{\normalspacing}{#1}}
\normalspacing

\def \@floatboxreset {%
        \reset@font
        \normalsize
        \singlespacing
        \@setminipage
}

\endinput
%%
%% End of file `cpecmu.cls'.
