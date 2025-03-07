% ================================
% 宮城大学 佐藤研究室 学位論文用クラスファイル
% ================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cuxarticle}[2024/02/22 CUX Thesis Class]

% クラスオプションの処理
\LoadClass[
  a4paper,
  10pt,
]{ltjsreport}

% ------------------------------
% パッケージの読み込み
% ------------------------------
\RequirePackage{luatexja-fontspec} % 日本語フォント設定
\RequirePackage{amsmath,amsfonts} % 数式
\RequirePackage{bm} % 数式中の太字
\RequirePackage{graphicx} % 図の挿入
\RequirePackage{array} % 表のセルの中央揃え
\RequirePackage{float} % 図表の位置を固定
\RequirePackage[
  top=28truemm,
  bottom=30truemm,
  left=23truemm,
  right=23truemm,
]{geometry} % 余白設定
\RequirePackage{setspace} % 行間調整
\RequirePackage[hidelinks]{hyperref} % ハイパーリンク
\RequirePackage{tocloft}  % 目次のカスタマイズ用パッケージ
\RequirePackage{titlesec}  % 章や節のスタイル設定用パッケージ

% ------------------------------
% Chapter設定
% ------------------------------
% chapterのスタイル設定
\titleformat{\chapter}
{\normalfont\fontsize{14pt}{16.8pt}\selectfont\bfseries} % フォーマット
{\sffamily 第\thechapter 章}  % ラベル
{1em}  % ラベルとタイトルの間のスペース
{}  % タイトル前に実行するコード
[]  % タイトル後に実行するコード

% 番号なしchapterのスタイル設定
\titleformat{name=\chapter,numberless}
{\normalfont\fontsize{14pt}{16.8pt}\selectfont\sffamily\bfseries}
{}
{0em}
{}

% chapterの垂直方向のスペース設定
\titlespacing*{\chapter}
{0pt}  % 左
{-9pt}  % 上
{35pt} % 下

% \chapter*を使ったときに目次に自動で追加する
\newcommand{\chapteraddtoc}[1]{
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
}

\newcommand{\chapterstarnotoc}[1]{
  \oldchapterstar{#1}
}

% ------------------------------
% Section設定
% ------------------------------
% sectionのスタイル設定
\titleformat{\section}
{\normalfont\fontsize{12pt}{14.4pt}\selectfont\bfseries}
{\sffamily\thesection}
{1em}
{}

% subsectionのスタイル設定
\titleformat{\subsection}
{\normalfont\fontsize{10pt}{12pt}\selectfont\bfseries}
{\sffamily\thesubsection}
{1em}
{}

% ------------------------------
% 目次のスタイル
% ------------------------------
\renewcommand{\cftchapfont}{\normalfont}      % 章タイトルを通常の太さに
\renewcommand{\cftchappagefont}{\normalfont}  % ページ番号も通常の太さに
\renewcommand{\contentsname}{{\fontsize{14pt}{16.8pt}\selectfont\mcfamily 目次}}
% 目次でのチャプター番号と題名の間隔を調整
\setlength{\cftchapnumwidth}{4em}  % tocloftを使うと「第○章」と章題が被るので調整

% 目次タイトルのスタイルと間隔の設定

\renewcommand{\contentsname}{{\normalfont\fontsize{14pt}{16.8pt}\selectfont\mcfamily 目次}}
\setlength{\cftbeforetoctitleskip}{0pt}     % 目次タイトル前の余白
\setlength{\cftaftertoctitleskip}{10pt}     % 目次タイトル後の余白

\setcounter{tocdepth}{3}                    % subsubsectionまで表示

% ------------------------------
% 参考文献スタイル
% ------------------------------
% 参考文献のラベル形式を変更
\makeatletter
\renewcommand{\@biblabel}[1]{#1)}
\makeatother

% ------------------------------
% フォント設定
% ------------------------------
\setmainfont{Times-New-Roman}
\setmainjfont[BoldFont = MS-Gothic]{MS-Mincho}
