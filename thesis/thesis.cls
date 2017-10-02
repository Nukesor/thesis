% First identify the class:

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions{}

\LoadClass[
    fontsize=12pt,
    headings=small,
    parskip=half,           % Ersetzt manuelles setzten von parskip/parindent.
    bibliography=totoc,
    numbers=noenddot,       % Entfernt den letzten Punkt der Kapitelnummern.
    open=any,               % Kapitel kann auf jeder Seite beginnen.
%   final                   % Entfernt alle todonotes und den Entwurfstempel.
]{scrreprt}

% Make the captions in your floats of the form:
% Figure 1 -> Fig. 1
\renewcommand{\figurename}{Fig.}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}

% force footnotes to the bottom
\usepackage[bottom]{footmisc}

% Redefining the chapter heading styles

% Numbered chapter heading style:

\renewcommand{\@makechapterhead}[1]{%
  {\singlespacing
    \parindent \z@ \raggedright \normalfont
    \vspace{4pt} % add some vertical space
    \ifnum \c@secnumdepth >\m@ne
        \huge \scshape \@chapapp\space \thechapter % Chapter followed by number
        \par \nobreak
    \fi
    \interlinepenalty\@M
    \huge \scshape \bf #1\par % chapter title
    \vspace{4pt} % add some vertical space
    \nobreak
    \vskip 40\p@
  }}

% Unnumbered chapter heading style:

\renewcommand{\@makeschapterhead}[1]{%
  {\singlespacing
    \parindent \z@ \raggedright
    \normalfont
    \vspace{4pt} %add some vertical space
    \interlinepenalty\@M
    \huge \scshape \bf #1\par % chapter title
    \vspace{4pt} % add some vertical space
    \nobreak
    \vskip 40\p@
  }}

\endinput
