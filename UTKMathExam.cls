\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UTKMathExam}[2025/02/21 This class provides style and format to create exams for the math 123 course and possibly others.]

\PassOptionsToClass{fleqn,twoside,12pt}{article}
\LoadClass[fleqn,twoside,12pt]{article}

%-------------- Load Packages -----------------------
\RequirePackage{geometry}
\RequirePackage{fancyhdr}

%--------------- Exam Information ------------------
\newcommand{\GetCourse}{Math 123}
\newcommand{\GetTerm}{Spring 2025}
\newcommand{\GetExamUnit}{Unit 1}
\newcommand{\GetExamLength}{50 minutes}
\newcommand{\GetVersionID}{A}

\newcommand{\SetCourse}[1]{\renewcommand{\GetCourse}{#1}}
\newcommand{\SetTerm}[1]{\renewcommand{\GetTerm}{#1}}
\newcommand{\SetExamUnit}[1]{\renewcommand{\GetExamUnit}{#1}}
\newcommand{\SetExamLength}[1]{\renewcommand{\GetExamLength}{#1}}
\newcommand{\SetVersionID}[1]{\renewcommand{\GetVersionID}{#1}}

%--------------- Headers and Page Style ------------------
\geometry{
  letterpaper,
  inner = 0.75in,
  outer = 0.5in,
  top = 1.0in,
  marginparwidth = 0.75in,
  textwidth = 7.25in,
  textheight = 9.2in
}

\fancypagestyle{exam-page-style}{
  \if@twoside
    \fancyhead[LE]{{\sc \GetCourse \ \GetTerm}}
    \fancyhead[CE]{{\sc \GetExamUnit \ Exam}}
    \fancyhead[RE]{{\sc Version \GetVersionID}}
    \fancyhead[LO]{{\sc Name:}}
  \else
    \fancyhead[L]{{\sc Name:}}
  \fi
}

%--------------- Cover Page ------------------
\fancypagestyle{cover-page-style}{
  \fancyhead[L]{Name: \underline{\hspace{2.2in}}}
  \fancyhead[C]{\hfil~NetID: \underline{\hspace{1.5in}}}
  \fancyhead[R]{Section: \underline{\hspace{.5in}}}
  \renewcommand{\headrulewidth}{0pt} % removes horizontal header line
}

\newcommand{\MakeCoverPage}[1]{
  \thispagestyle{cover-page-style}
  \include{#1}
  \pagebreak
}

\pagestyle{exam-page-style}
