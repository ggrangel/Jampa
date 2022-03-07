%% ==================================================
% Jampa is a LaTeX template created by Gustavo Barreto Rangel from João Pessoa-PB, Brazil
%% ==================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Jampa}[2020/10/12 - Jampa Presentation Template]

%% ================================================== Required Packages
\RequirePackage[utf8]{inputenc}    % for special characters
\RequirePackage[T1]{fontenc}       % For ç and ~ in words
\RequirePackage{xkeyval}           % for handling key options
\RequirePackage{ifthen}            % needless to say
\RequirePackage{tikz}              % so the template may look nice
\RequirePackage{ragged2e}          % for justifying paragraphs
\RequirePackage{lmodern}           % for equations in serif
\RequirePackage{lipsum}            % for tests

%% ================================================== class level options

%% -------------------------------------------------- presentation aspect ratio
\newcommand\jampa@aspectratio{169}

\DeclareOptionX{aspectratio}[16:9]{
  \ifthenelse{ \equal{#1}{4:3} }{
    \renewcommand\jampa@aspectratio{43}
  }{
    \ifthenelse{ \equal{#1}{16:9} }{
      \renewcommand\jampa@aspectratio{169}
    }{
      \PackageError{jampa}{`aspectratio=#1' not allowed. Use `4:3' or `16:9'}
    }
  }
}

%% -------------------------------------------------- language
\newcommand\jampa@language{portuguese}
\newcommand\jampa@toc@frametitle{Conteúdo}
\newcommand\jampa@comae@name{Universidade\\[1.5mm]\ de\ Brasília}

% \DeclareOptionX{language}[portuguese]{
%   \ifthenelse{ \equal{#1}{portuguese} }{
%     \renewcommand\jampa@language{portuguese}
%     \renewcommand\jampa@toc@frametitle{Conteúdo}
%     \renewcommand\jampa@comae@name{Comando\ de\\[1mm] Operações\\[1mm] Aeroespaciais}
%   }{
%     \ifthenelse{ \equal{#1}{english} }{
%       \renewcommand\jampa@language{english}
%       \renewcommand\jampa@toc@frametitle{Table Of Contents}
%       \renewcommand\jampa@comae@name{Aerospace\\[1mm] Operations\\[1mm] Command}
%     }{
%       \PackageError{jampa}{`language=#1' not allowed. Use `portuguese' or `english'}
%     }
%   }
% }

%% -------------------------------------------------- ignore any other given option
\DeclareOptionX*{
  \PackageWarning{jampa}{`\CurrentOption' ignored}
}

%% -------------------------------------------------- process options
\ProcessOptionsX

%% ================================================== load language package
\RequirePackage[\jampa@language]{babel}

%% ================================================== setting beamer
\LoadClass[t, 10pt, aspectratio=\jampa@aspectratio]{beamer}

%% -------------------------------------------------- keep math font as serif
\usefonttheme[onlymath]{serif}

%% --------------------------------------------------  load jampa theme
\usetheme[
  titlegraphictext=\jampa@comae@name
]{jampa}

\AtBeginSection{
  {
  \setbeamertemplate{headline}[default]
  \begin{frame}{\jampa@toc@frametitle}
    \tableofcontents[currentsection]
  \end{frame}
  }
}

\titlegraphic{\includegraphics[height=0.06\paperheight]{images/unb.png}}

%% ================================================== Nice font (shall be loaded after loading theme)
\RequirePackage{iwona}
\RequirePackage{hyperref}          % so the presentation can be navigable

%% ================================================== public commands
\newcommand{\insertcoverframe}{\frame{\maketitle}}

\newcommand{\inserttocframe}{
  \begin{frame}{\jampa@toc@frametitle}
    \tableofcontents
  \end{frame}
}
