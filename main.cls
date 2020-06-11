\NeedsTeXFormat{LaTeX2e}
\makeatletter
%-------------------------------------------------------------------------------------------------------
\LoadClass[a4paper]{book}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{ifxetex}
\RequireXeTeX
%-------------------------------------------------------------------------------------------------------
\RequirePackage{xcolor}
\newif\ifTJ@green
\newif\ifTJ@orange
\newif\ifTJ@violet
\DeclareOption{green}
{	\TJ@greentrue
	\TJ@orangefalse
	\TJ@violetfalse
}
\DeclareOption{orange}
{	\TJ@greenfalse
	\TJ@orangetrue
	\TJ@violetfalse
}
\DeclareOption{violet}
{	\TJ@greenfalse
	\TJ@orangefalse
	\TJ@violettrue
}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TJ@classtoload}}
%\ExecuteOptions{green}
\ProcessOptions
\ifTJ@green
	\definecolor{cvgreen}{HTML}{92D14F}
	\definecolor{cvgray}{HTML}{D8E4BE}
	\definecolor{cvtext}{HTML}{92909B}
\else
\fi
\ifTJ@orange
	\definecolor{cvgreen}{RGB}{230, 140, 20}
	\definecolor{cvgray}{RGB}{248, 216, 174}
	\definecolor{cvtext}{RGB}{100, 100, 100}
\else
\fi
\ifTJ@violet
	\definecolor{cvgreen}{RGB}{142, 10, 178}
	\definecolor{cvgray}{RGB}{209, 181, 217}
	\definecolor{cvtext}{RGB}{100, 100, 100}
\else
\fi
\definecolor{dkgreen}{rgb}{0, 0.6, 0}
\definecolor{gray}{rgb}{0.5, 0.5, 0.5}
\definecolor{mauve}{rgb}{0.58, 0, 0.82}
\definecolor{DeepSkyBlue4}{RGB}{0, 104, 139}
%-------------------------------------------------------------------------------------------------------
\RequirePackage[heading = true]{ctex}
\xeCJKsetup
{	CJKecglue = {\hskip 0.10em plus 0.05em minus 0.05em}, 
	CheckSingle = true
}
\setCJKmainfont
[	BoldFont = {Noto Serif CJK SC Bold}, 
	ItalicFont = {AR PL UKai HK}
]{Noto Serif CJK SC ExtraLight}
\setCJKsansfont[BoldFont = {Noto Sans S Chinese Medium}]{Noto Sans S Chinese DemiLight}
\setCJKmonofont{WenQuanYi Micro Hei Mono Light}
\setCJKfamilyfont{zhkesong}{MF KeSong (Noncommercial)}
\setCJKfamilyfont{zhhjsd}{MF TheGoldenEra (Noncommercial)}
\setCJKfamilyfont{zhlangsong}{MF LangSong (Noncommercial)}
\newcommand{\hjsd}{\CJKfamily{zhhjsd}}
\newcommand{\KeSong}{\CJKfamily{zhkesong}}
\newcommand{\langsong}{\CJKfamily{zhlangsong}}
\newfontfamily\KeSongf[Mapping = tex-text]{MF KeSong (Noncommercial)}
\newfontfamily\hjsdf[Mapping = tex-text]{MF TheGoldenEra (Noncommercial)}
\newfontfamily\langsongf[Mapping = tex-text]{MF LangSong (Noncommercial)}
\newfontfamily\SourceCodePro[Mapping = tex-text]{Source Code Pro}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{natbib}
\bibliographystyle{abbrv}
%\bibliography{main}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{makeidx}
\makeindex
%-------------------------------------------------------------------------------------------------------
\RequirePackage[russian]{babel}
\let\captionsrussian\empty
\let\daterussian\empty
%-------------------------------------------------------------------------------------------------------
\RequirePackage{graphicx}
\graphicspath{{Pictures/}}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{tcolorbox}
\tcbuselibrary{skins, breakable, theorems}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{enumitem}
\setlist[enumerate, 1]
{	label = \arabic*., 
	font = \textup, 
	leftmargin = 7mm, 
	labelsep = 1.5mm, 
	topsep = 0mm, 
	itemsep = 1mm, 
	parsep = 0mm
}
\setlist[enumerate, 2]
{	label = \arabic*., 
	font = \textup, 
	leftmargin = 7mm, 
	labelsep = 1.5mm, 
	topsep = -0.8mm, 
	itemsep = 1mm, 
	parsep = 0mm
}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{ean13isbn}
\newcommand{\drawbarcode}[1]{\EANisbn[SC5a, ISBN = #1]}
%-------------------------------------------------------------------------------------------------------
\RequirePackage[unicode]{hyperref}
\hypersetup
{	colorlinks = true, 
	linkcolor = mauve, 
	citecolor = blue
}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{listings}
\lstset
{	language = Octave, 			%thelanguageofthecode
	basicstyle = \footnotesize, 		%thesizeofthefontsthatareusedforthecode
	numbers = left, 				%wheretoputtheline-numbers
	numberstyle = \tiny\color{gray}, 	%thestylethatisusedfortheline-numbers
	stepnumber = 2, 			%thestepbetweentwoline-numbers.Ifit's1, eachlinewillbenumbered
	numbersep = 5pt, 			%howfartheline-numbersarefromthecode
	backgroundcolor = \color{white}, %choosethebackgroundcolor.Youmustadd\usepackage{color}
	showspaces = false, 			%showspacesaddingparticularunderscores
	showstringspaces = false, 		%underlinespaceswithinstrings
	showtabs = false, 			%showtabswithinstringsaddingparticularunderscores
	frame = single, 				%addsaframearoundthecode
	rulecolor = \color{black}, 		%ifnotset, theframe-colormaybechangedonline-breakswithinnot-blacktext(e.g.commens(greenhere))
	tabsize = 2, 				%setsdefaulttabsizeto2spaces
	captionpos = b, 				%setsthecaption-positiontobottom
	breaklines = true, 			%setsautomaticlinebreaking
	breakatwhitespace = false, 	%setsifautomaticbreaksshouldonlyhappenatwhitespace
	title = \lstname, 				%showthefilenameoffilesincludedwith\lstinputlisting; alsotrycaptioninsteadoftitle
	keywordstyle = \color{blue}, 	%keywordstyle
	commentstyle = \color{dkgreen}, %commentstyle
	stringstyle = \color{mauve}, 	%stringliteralstyle
	escapeinside = {`}, 			%ifyouwanttoaddLaTeXwithinyourcode
	morekeywords = {*, ...}		%ifyouwanttoaddmorekeywordstotheset
}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{caption}
%\DeclareCaptionFont{kai}{\kaishu}
%\captionsetup{textfont = kai}
%\floatsetup[table]{capposition = top}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{printlen}
\uselengthunit{mm}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{geometry}
%\geometry{verbose, letterpaper}
%\geometry{left = 1cm, right = 1cm, top = 2cm, bottom = 2cm}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{fancyhdr}
\pagestyle{fancy}
%-------------------------------------------------------------------------------------------------------
\RequirePackage{tikz}
\usetikzlibrary{patterns}
\usetikzlibrary{arrows}
\usetikzlibrary{shapes}
\usetikzlibrary{chains}
\usetikzlibrary{mindmap}
\usetikzlibrary{graphs}
\tikzstyle{level 2 concept}+ = [sibling angle = 40]
\tikzstyle{start结束} = 
[	rectangle, rounded corners, 
	minimum width = 2cm, 
	minimum height = 1cm, 
	text centered, 
	draw = black, 
	fill = red! 40
]
\tikzstyle{io} = 
[	trapezium, 
	trapezium left angle = 70, 
	trapezium right angle = 110, 
	minimum width = 2cm, 
	minimum height = 1cm, 
	text centered, 
	draw = black, 
	fill = blue! 40
]
\tikzstyle{process} = 
[	rectangle, 
	minimum width = 3cm, 
	minimum height = 1cm, 
	text centered, 
	draw = black, 
	fill = yellow! 50
]
\tikzstyle{decision} = 
[	diamond, 
	aspect = 3, 
	text centered, 
	draw = black, 
	fill = green! 30
]
\tikzstyle{arrow} = 
[	->, 
	> = stealth
]
%-------------------------------------------------------------------------------------------------------
\RequirePackage[explicit]{titlesec}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{epigraph}
\RequirePackage{textcomp}
\RequirePackage{lastpage}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{pdfpages}
\RequirePackage{standalone}
\RequirePackage{diagbox}
\RequirePackage{multicol}
\RequirePackage{indentfirst}
\RequirePackage{newtxmath}
\RequirePackage{palatino}
\RequirePackage{colortbl}
\RequirePackage{media9}
\RequirePackage{wallpaper}
\RequirePackage{subfigure}
\RequirePackage{pifont}
\RequirePackage{wrapfig}
\RequirePackage{multirow}
%-------------------------------------------------------------------------------------------------------
%\renewcommand\abstractname{第一版前言}
%\renewcommand\contentsname{Content}
%\renewcommand{\thetable}{}
\title
{	\textbf
	{	南京洛克斯科技有限责任公司
		\\创业计划书
	}
}
\author{洛克斯团队}
\date{\today}
\newcommand{\ROMAN}[1]{\expandafter\@slowromancap\romannumeral #1@}
\newcommand{\BookSeries}[1]{\def\TJ@BookSeries{#1}}
\BookSeries{世界500强公司创业计划系列丛书}
\newcommand\subtitle[1]{\def\TJ@subtitle{#1}}
\subtitle{Bussiness Plan of Nanjing Lockers S\&T Co. LTD}
\newcommand\BookIntroduction[1]{\def\TJ@BookIntroduction{#1}}
\BookIntroduction
{	这是一本你从未读过的好书。
	\\见证从刚刚诞生的小公司到世界500强的大企业经历的风风雨雨。
	\\创业教父雷军、青年导师李开复强力推荐！
}
\newcommand\edition[1]{\def\TJ@edition{#1}}
\edition{1}
\newcommand\Publisher[1]{\def\TJ@Publisher{#1}}
\Publisher{\href{http://www.hep.edu.cn/}{高等教育出版社}}
\newcommand\DedicatedTo[1]{\def\TJ@DedicatedTo{#1}}
\DedicatedTo{\href{http://www.njust.edu.cn/}{我挚爱的母校}}
\newcommand\Editor[1]{\def\TJ@editor{#1}}
\Editor{洛克斯团队}
\newcommand\Designer[1]{\def\TJ@designer{#1}}
\Designer{\href{https://i.qq.com/?s_url = http\%3A\%2F\%2Fuser.qzone.qq.com\%2F1295652958\%2Finfocenter\&rd = 1}{吴振宇}}
\newcommand\Price[1]{\def\TJ@price{#1}}
\Price{28.00}
\newcommand\isbn[1]{\def\TJ@isbn{#1}}
\isbn{978-7-04-047975-1}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\maketitle
{	\begin{titlepage}
		\thispagestyle{empty}
		\begin{tikzpicture}[remember picture, overlay]
			\fill[cvgreen](current page.north west)rectangle([xshift = 5cm]current page.south west); 
			\fill[cvgray]([yshift = -5cm]current page.north west)rectangle([yshift = -10cm]current page.north east); 
			\@ifundefined{TJ@BookSeries}{}
			{	\node[above right]
				at(
				[	xshift = 5.5cm, 
					yshift = -4.5cm
				]current page.north west){\LARGE\hjsd\hjsdf\TJ@BookSeries}; 
			}
	 		\node
	 		[	cvtext, 
	 			right, 
	 			text width = 17cm, 
	 			inner sep = 0.3cm
	 		]
	 		at(
	 		[	xshift = 1cm, 
	 			yshift = -7cm
	 		]current page.north west)
	 		{	\begin{center}
	 				\fontsize{40pt}{20pt}\selectfont\langsong\langsongf\@title
				\end{center}
			}; 
			\@ifundefined{TJ@subtitle}{\relax}
			{	\node[cvtext, above left]
				at(
				[	xshift = -1cm, 
					yshift = -10cm
				]current page.north east){\huge ------\TJ@subtitle}; 
			}
			\@ifundefined{TJ@edition}{}
			{	\fill[cvgreen]([xshift = -2.5cm]current page.south east)-- ++(-5, 0)-- ++(7.5, 7.5)-- ++(0, -5)--cycle; 
				\node[white]
				at(
				[	xshift = -2.8cm, 
					yshift = 2.8cm
				]current page.south east)[rotate = 45]{\bfseries\sffamily\LARGE 第\zhnumber{\TJ@edition}版}; 
				\node[white]
				at
				(	[	xshift = -2.2cm, 
						yshift = 2.2cm
					]current page.south east)[rotate = 45]{\bfseries\LARGE Edition\;\ROMAN{\TJ@edition}}; 	
				\draw[white, thick](
				[	xshift = -4cm, 
					yshift = 1cm
				]current page.south east)--(
				[	xshift = -1cm, 
					yshift = 4cm
				]current page.south east); 
				\path
				[	fill = blue! 75! white, 
					draw = blue, 
					double = white! 85! blue, 
					preaction = 
					{	opacity = 0.6, 
						fill = blue! 75! white
					}, 
					line width = 0.1mm, 
					double distance = 0.2mm, 
					pattern = fivepointed stars, 
					pattern color = white! 75! blue
				]([xshift = -3cm]current page.south east)-- ++(-0.5, 0)-- ++(3.5, 3.5)-- ++(0, -0.5)-- cycle; 
				\path
				[	fill = blue! 75! white, 
					draw = blue, 
					double = white! 85! blue, 
					preaction = 
					{	opacity = 0.6, 
						fill = blue! 75! white
					}, 
					line width = 0.1mm, 
					double distance = 0.2mm, 
					pattern = fivepointed stars, 
					pattern color = white! 75! blue
				]([xshift = -6.5cm]current page.south east)-- ++(-0.5, 0)-- ++(7, 7)-- ++(0, -0.5)-- cycle; 
			}
			\node[right]
			at(
			[	xshift = 5.5cm, 
				yshift = 2.5cm
			]current page.south west){\LARGE\KeSong\KeSongf\TJ@Publisher}; 
			\@ifundefined{TJ@BookIntroduction}
			{	\node[inner sep = 0pt, below right, white](image)at([xshift = 5cm, yshift = -12cm]current page.north west){\rule{8cm}{3cm}}; 
				\draw
				[	white, 
					line width = 1mm
				](image.east)-- ++(5, 0)node
				[	above left, 
					text = black
				]{\LARGE\itshape\makebox[3em][s]{\LARGE\itshape\@author}\hspace{3em}著}; 
			}
			{	\node
				[	inner sep = 0pt, below right](image)at(
					[	xshift = 5cm, 
						yshift = -12cm
					]current page.north west)
				{
				\begin{tcolorbox}
					[	sharp corners = west, 
						text width = 8cm, 
						colframe = cvtext, 
						leftrule = 0pt, 
						arc = 10pt, 
						toprule = 3mm, 
						bottomrule = 3mm
					]
					\large\TJ@BookIntroduction
				\end{tcolorbox}
				}; 
				\draw
				[	cvtext, 
					line width = 1mm
				](image.east)-- ++(5, 0)node
				[	above left, 
					text = black
				]{\LARGE\itshape\makebox[3em][s]{\LARGE\itshape\@author}\hspace{3em}著}; 
			}
		\end{tikzpicture}
	\end{titlepage}
	\if@twoside
		\newpage\thispagestyle{empty}\mbox{}
	\else
	\fi
	\global\let\maketitle\relax
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makeflypage
{	\begin{titlepage}
		\thispagestyle{empty}
		\vspace*{\stretch{1}}
		\begin{center}
			{\huge\bfseries\@title}
			\\\vspace{2cm}
			{\itshape\LARGE\makebox[3em][s]{\itshape\LARGE\@author}\hspace{3em}著}
		\end{center}
		\vspace{\stretch{1}}
		\newpage
		\thispagestyle{empty}
		\@ifundefined{TJ@DedicatedTo}{\mbox{}}{\Large\textbf{献给}：\TJ@DedicatedTo}
		\vfill
		\begin{center}
			{\large\sffamily\@title}
			\\{\itshape\normalsize\makebox[3em][s]{\itshape\@author}\hspace{3em}著}
			\\[5pt]\makebox[2cm][s]{* * *}
			\\[10pt]{\Large\KeSong\KeSongf\TJ@Publisher}
			\\[-2pt]{\normalsize\texttt{\url{http://www.hep.edu.cn}}}
			\\[-5pt]{\footnotesize 开本：\rndprintlength{\paperwidth}$\times$\rndprintlength{\paperheight}\hspace{0.5em}字数：5000}
			\\[0pt]{\small\the\year 年\the\month 月 第\TJ@edition\ 版 第 1 次印刷}
			\\[-5pt]{\small 印数：001--100 册\hspace{0.5em}定价：\TJ@price 元}
			\\[5pt]\hrule\vskip5pt{\small 本书如有缺页、倒页、脱页等质量问题，请到所购图书销售部门联系调换}
			\\[-15pt]\vskip5pt{\small\makebox[3em][s]{版权所有}\hspace{3em}\makebox[3em][s]{侵权必究}}
			\\[-15pt]\vskip5pt{\small\makebox[3em][s]{物 料 号}\hspace{3em}\makebox[3em][s]{47975-00}}
		\end{center}
	\end{titlepage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcbox{mynamebox}
{	on line, 
	colback = cvgray, 
	arc = 0pt, 
	boxrule = 0pt, 
	toprule = 2pt, 
	rightrule = 5mm, 
	colframe = cvgreen, 
	coltext = cvtext
}
\newcommand\chapternamebox[1]{\mynamebox{#1}}
\newtcolorbox{mytitlebox}
{	colback = cvgray, 
	arc = 0pt, 
	coltext = cvtext, 
	colframe = cvgreen, 
	boxrule = 0pt, 
	bottomrule = 2pt, 
	toprule = 0pt, 
	leftrule = 5mm
}
\newcommand\chaptertitlebox[1]
{	\begin{mytitlebox}
	#1
	\end{mytitlebox}
}
\newcommand\BackgroundPicture
{	\put(0, 0)
	{	\parbox[b][\paperheight]{\paperwidth}
		{\vfill \centering
		\begin{tikzpicture}[remember picture, overlay]
			\node
			[	rotate = 60, 
				scale = 10, 
				text opacity = .2
			]at(current page.center) {\makebox[-1em]{}洛克斯团队}; 
		\end{tikzpicture}
		\vfill
		}
	}
}
\def\WallPaper
{	\ifthenelse{\value{chapter} > 0}
			{	\ThisCenterWallPaper{1}{background.jpg}
				\tikz[remember picture, overlay]\node[right]
				at(
				[	xshift = 2.3cm, 
					yshift = -4.7cm
				]current page.north west){\includegraphics[height = 2cm]{logo.eps}}; 
				\newpage
				\LRCornerWallPaper{0.3}{distributor.jpg}
				\AddToShipoutPicture{\BackgroundPicture}
			}
			{	\par\smallskip
				\AddToShipoutPicture{\BackgroundPicture}
			}
}
\ctexset
{	chapter = 
	{	beforeskip = 0pt, 
		fixskip = true, 
		format = \huge\bfseries, 
		name = {, }, 
		nameformat = \mbox{}\hfill\chapternamebox, 
		number = \arabic{chapter}, 
		numberformat = \fontencoding{OT1}\fontfamily{cmss}\fontsize{60pt}{72pt}\selectfont, 
		aftername = \par\medskip, 
		titleformat = \chaptertitlebox, 
		aftertitle = \WallPaper
	}
}
%\titleformat{\chapter}[display]{}{}{0pt}{\Huge\hyperlink{\thechapter}{#1}}
%\titleformat
%{	name = \chapter, 
%	numberless
%}[display]{\normalfont\huge\bfseries}{}{0pt}{\Huge#1}
%\def\@chapter[#1]#2
%{	\ifnum
%		\c@secnumdepth >\m@ne
%		\refstepcounter{chapter}
%		\typeout{\@chapapp\space\thechapter.}
%		\addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}\string\hypertarget{\thechapter}{#1}}%
%	\else
%	\addcontentsline{toc}{chapter}{#1}
%	\fi
%	\chaptermark{#1}
%	\addtocontents{lof}{\protect\addvspace{10\p@}}
%	\addtocontents{lot}{\protect\addvspace{10\p@}}
%	\if@twocolumn
%		\@topnewpage[\@makechapterhead{#2}]
%	\else
%		\@makechapterhead{#2}
%		\@afterheading
%	\fi
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand{headrulewidth}{0.4pt}
%\renewcommand{footrulewidth}{0.4pt}
\setlength{\headheight}{13pt}
\def\Fancy
{	\fancyhead[LE]{\small{南京洛克斯科技有限责任公司}}
	\fancyhead[CE]{\small{第\thechapter 章}}
	\fancyhead[RE]{\small{南京理工大学}}
	\fancyfoot[LE]{}
	\fancyfoot[CE]{\small{第\thepage 页}}
	\fancyfoot[RE]{}
	\fancyhead[LO]{\small{Nanjing Lockers S\&T Co. LTD}}
	\fancyhead[CO]{\small{Chapter \thechapter}}
	\fancyhead[RO]{\small{NJUST}}
	\fancyfoot[LO]{}
	\fancyfoot[CO]{\small{Page \thepage}}
	\fancyfoot[RO]{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\cleardoublepage}
{	\clearpage
	\if@twoside
		\ifodd
			\c@page
		\else
			\thispagestyle{empty}
			\ClearWallPaper
			\tikz[remember picture, overlay]\node
			at([yshift = 10.5cm]current page.center){\LARGE 广告位招租}; 
			\tikz[remember picture, overlay]\node[right]
			at(
			[	xshift = -6cm, 
				yshift = 9cm
			]current page.center){本书每章从右手页（奇数页）开始。现计划将空余的左手页（偶数页）作为广告位出租。}; 
			\tikz[remember picture, overlay]\node[right]
			at(
			[	xshift = -6cm, 
				yshift = 8.3cm
			]current page.center){有意向者请联系电话：18355528308或QQ：\href{https://i.qq.com/?s_url = http\%3A\%2F\%2Fuser.qzone.qq.com\%2F1295652958\%2Finfocenter\&rd = 1}{1295652958}。价格面谈。}; 
			\tikz[remember picture, overlay]\node[left]
			at(
			[	xshift = 8.5cm, 
				yshift = 6cm]current page.center){联系人：南京洛克斯科技有限责任公司执行经理\quad\href{https://i.qq.com/?s_url = http\%3A\%2F\%2Fuser.qzone.qq.com\%2F1295652958\%2Finfocenter\&rd = 1}{吴先生}}; 
			\tikz[remember picture, overlay]\node[left]
			at(
			[	xshift = 8.5cm, 
				yshift = 5.3cm]current page.center){截止时间：\today}; 
			\tikz[remember picture, overlay]\node
			at([yshift = -5cm]current page.center){\includegraphics[width = 16cm]{ad.jpg}}; 
			\newpage
			\AddToShipoutPicture{\BackgroundPicture}
			\if@twocolumn
				\hbox{}
				\newpage
			\fi
		\fi
	\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\Tcbset
{	\tcbset
	{	colframe = blue! 50! black, 
		colback = white, 
		colupper = red! 50! black, 
		fonttitle = \bfseries, 
		left = 0mm, 
		right = 0mm, 
		top = 0mm, 
		bottom = 0mm, 
		boxsep = 0mm, 
	 	toptitle = 0.5mm, 
	 	bottomtitle = 0.5mm, 
		nobeforeafter, center title
	}
}
\newtcbtheorem{strength0}{\it 优点}
{	enhanced, breakable, 
	colback = white, 
	colframe = cyan, 
	colbacktitle = cyan, 
	attach boxed title to top left = 
	{	yshift = -2mm, 
		xshift = 5mm
	}, 
	boxed title style = {sharp corners}, 
	fonttitle = \sffamily\bfseries, 
	separator sign = {\it ：}
}{}
\newtcbtheorem{strength}{\it 优点}
{	enhanced, breakable, 
	colback = white, 
	colframe = cyan, 
	colbacktitle = cyan, 
	attach boxed title to top left = 
	{	yshift = -2mm, 
		xshift = 5mm
	}, 
	boxed title style = {sharp corners}, 
	fonttitle = \sffamily\bfseries, 
	separator sign = {\it ：}
}{}
\newtcbtheorem{strength2}{\it 优点}
{	enhanced, breakable, 
	colback = white, 
	colframe = cyan, 
	colbacktitle = cyan, 
	attach boxed title to top left = 
	{	yshift = -2mm, 
		xshift = 5mm
	}, 
	boxed title style = {sharp corners}, 
	fonttitle = \sffamily\bfseries, 
	separator sign = {\it ：}
}{}
\newtcbtheorem{strength3}{\it 优点}
{	enhanced, breakable, 
	colback = white, 
	colframe = cyan, 
	colbacktitle = cyan, 
	attach boxed title to top left = 
	{	yshift = -2mm, 
		xshift = 5mm
	}, 
	boxed title style = {sharp corners}, 
	fonttitle = \sffamily\bfseries, 
	separator sign = {\it ：}
}{}
\newtcbtheorem{weakness}{\it 缺点}
{	enhanced, breakable, 
	colback = white, 
	colframe = gray, 
	colbacktitle = gray, 
	attach boxed title to top left = 
	{	yshift = -2mm, 
		xshift = 5mm
	}, 
	boxed title style = {sharp corners}, 
	fonttitle = \sffamily\bfseries, 
	separator sign = {\it ：}
}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\Mindmap
{	\tikzstyle{level 2 concept}+ = [sibling angle = 40]
	\begin{tikzpicture}
		[	scale = 0.49, 
			transform shape
		]
		\path
		[	mindmap, 
			concept color = black, 
			text = white
		]
		node[concept]{}[clockwise from = 45]
		child
		[	concept, 
			color = DeepSkyBlue4
		]
		{	node[concept]{}[clockwise from = 180]
			child
			{	node[concept]{}[clockwise from = 120]
				child{node[concept]{}}
				child{node[concept]{}}[clockwise from = -40]
				child{node[concept]{}}
			}
		}
		child
		[	concept, 
			color = black! 50! green, 
			grow = -40
		]
		{	node[concept]{}[clockwise from = 10]
			child{node[concept]{}}
			child{node[concept]{}}
			child{node[concept]{}}
		}
		child
		[	concept color = black! 25! red, 
			grow = -90
		]
		{	node[concept]{}[clockwise from = -30]
			child{node[concept]{}}
			child
			{	node
				[	concept, 
					color = black! 50! green! 50! red, 
					text = white
				]{}
			}
			child
			{	node[concept]{}[clockwise from = -150]
				child
				{	node
					[	concept, 
						color = black! 25! red! 50! brown, 
						text = white
					]{}
				}
			}
		}
		child[concept color = brown, grow = 140]
		{	node[concept]{}[counterclockwise from = 70]
			child{node[concept]{}}
			child{node[concept]{}}
			child
			{	node[concept]{}[clockwise from = 180]
				child
				{	node
					[	concept, 
						color = red! 25! brown, 
						text = white
					]{}
				}
			}
			child{node[concept]{}}
		}
		node
		[	extra concept, 
			concept color = black
		]
		at(200:5){}
		child
		[	grow = 145, 
			concept, 
			color = black! 50! yellow
		]
		{	node[concept]{}[clockwise from = 180]
			child{node[concept]{}}
		}; 
	\end{tikzpicture}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\Flowchart
{	\tikzstyle{every node} = [font = \tiny]
	\begin{tikzpicture}[node distance = 2cm]
		\node(开始)[start结束]{开始}; 
		\node(输入密码或扫描二维码)
		[	io, 
			align = center, 
			below of = 开始
		]{输入密码\\或扫描二维码}; 
		\node(判断密码或二维码正确性)
		[	decision, 
			align = center, 
			below of = 输入密码或扫描二维码
		]{判断\\密码或二维码\\正确性}; 
		\node(提示请重新输入密码或扫描二维码)
		[	process, 
			align = center, 
			right of = 判断密码或二维码正确性, 
			xshift = 3cm, 
			yshift = 2cm
		]{提示\\请重新输入密码\\或扫描二维码}; 
		\node(根据密码或二维码判断输入者身份)
		[	decision, 
			align = center, 
			below of = 判断密码或二维码正确性
		]{根据密码或二维码\\判断输入者身份}; 
		\node(判断外卖是否已经抵达)
		[	decision, 
			align = center, 
			right of = 根据密码或二维码判断输入者身份, 
			xshift = 3cm, 
		]{判断\\外卖\\是否已经抵达}; 
		\node(提示请再等待片刻外卖正在路上)
		[	io, 
			align = center, 
			right of = 判断外卖是否已经抵达, 
			xshift = 1cm, 
			yshift = -2cm
		]{提示\\请再等待片刻\\外卖正在路上}; 
		\node(打开对应的柜子并向对应的外卖配送员发送外卖交付成功信息)
		[	io, 
			align = center, 
			below of = 判断外卖是否已经抵达
		]{打开对应的柜子\\并向对应的外卖配送员\\发送外卖交付成功信息}; 
		\node(判断是否有空柜子)
		[	decision, 
			align = center, 
			below of = 根据密码或二维码判断输入者身份
		]{判断\\是否\\有空柜子}; 
		\node(提示请再等待片刻暂时没有空柜子)
		[	process, 
			align = center, 
			left of = 判断是否有空柜子, 
			xshift = -5.5cm, 
			yshift = -2cm
		]{提示\\请再等待片刻\\暂时没有空柜子}; 
		\node(打开对应的柜子并向对应的外卖订购者发送外卖抵达提示信息)
		[	io, 
			align = center, 
			below of = 判断是否有空柜子
		]{打开空柜子\\并向对应的外卖订购者\\发送外卖抵达提示信息}; 
		\node(判断柜子是否关上)
		[	decision, 
			align = center, 
			below of = 打开对应的柜子并向对应的外卖订购者发送外卖抵达提示信息
		]{判断\\柜子是否关上}; 
		\node(提示柜门未关闭)
		[	decision, 
			align = center, 
			left of = 打开对应的柜子并向对应的外卖订购者发送外卖抵达提示信息, 
			xshift = -2cm
		]{提示\\柜门未关闭}; 
		\node(结束)
		[	start结束, 
			align = center, 
			below of = 判断柜子是否关上
		]{结束}; 
		\draw[arrow](开始)--(输入密码或扫描二维码); 
		\draw[arrow](输入密码或扫描二维码)--(判断密码或二维码正确性); 
		\draw[arrow](判断密码或二维码正确性)-|node[above]{密码错误}(提示请重新输入密码或扫描二维码); 
		\draw[arrow](提示请重新输入密码或扫描二维码)--(输入密码或扫描二维码); 
		\draw[arrow](判断密码或二维码正确性)--node[right]{密码正确}(根据密码或二维码判断输入者身份); 
		\draw[arrow](根据密码或二维码判断输入者身份)--node[above]{外卖订购者}(判断外卖是否已经抵达); 
		\draw[arrow](判断外卖是否已经抵达)--node[right]{是}(打开对应的柜子并向对应的外卖配送员发送外卖交付成功信息); 
		\draw[arrow](打开对应的柜子并向对应的外卖配送员发送外卖交付成功信息)|-(判断柜子是否关上); 
		\draw[arrow](判断外卖是否已经抵达)-|node[above]{否}(提示请再等待片刻外卖正在路上); 
		\draw[arrow](提示请再等待片刻外卖正在路上)|-(结束); 
		\draw[arrow](根据密码或二维码判断输入者身份)--node[right]{外卖配送员}(判断是否有空柜子); 
		\draw[arrow](判断是否有空柜子)-|node[above]{无}(提示请再等待片刻暂时没有空柜子); 
		\draw[arrow](判断是否有空柜子)--node[right]{有}(打开对应的柜子并向对应的外卖订购者发送外卖抵达提示信息); 
		\draw[arrow](打开对应的柜子并向对应的外卖订购者发送外卖抵达提示信息)--(判断柜子是否关上); 
		\draw[arrow](判断柜子是否关上)--node[right]{是}(结束); 
		\draw[arrow](判断柜子是否关上)-|node[above]{否}(提示柜门未关闭); 		
		\draw[arrow](提示柜门未关闭)--(打开对应的柜子并向对应的外卖订购者发送外卖抵达提示信息); 
		\draw[arrow](提示请再等待片刻暂时没有空柜子)|-(结束); 
	\end{tikzpicture}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makebackcover
{	\clearpage
	\mbox{}\newpage
	\if@twoside
		\ifodd
			\c@page
			\if@openright
				\thispagestyle{empty}
				\mbox{}\newpage
				\ClearWallPaper
				\ClearShipoutPicture
				\if@twocolumn
					\mbox{}\newpage
				\fi
			\fi
		\fi
	\fi
	\thispagestyle{empty}
	\begin{tikzpicture}[remember picture, overlay]
		\fill[cvgreen](current page.north east)rectangle([xshift = -6cm]current page.south east); 
		\fill[cvgreen]([xshift = -6.2cm]current page.north east)rectangle([xshift = -6.35cm]current page.south east); 
		\fill[cvgreen]([xshift = -6.45cm]current page.north east)rectangle([xshift = -6.55cm]current page.south east); 
		\fill[cvgreen]([xshift = -6.65cm]current page.north east)rectangle([xshift = -6.7cm]current page.south east); 
		\fill[cvgray]([yshift = -5cm]current page.north west)rectangle([yshift = -10cm]current page.north east); 
		\node[right]
		at(
		[	xshift = 1cm, 
			yshift = -4cm
		]current page.north west){\large\itshape 封面设计：\makebox[3em][s]{\large\itshape\TJ@designer}}; 
		\node[right]
		at(
		[	xshift = 1cm, 
			yshift = -4.5cm
		]current page.north west){\large\itshape 责任编辑：\makebox[3em][s]{\large\itshape\TJ@editor}}; 
		\node
		at(
		[	xshift = -3.3cm, 
			yshift = 5cm
		]current page.south east){\expandafter\drawbarcode\expandafter{\TJ@isbn}}; 
		\node
		at(
		[	xshift = -3.3cm, 
			yshift = 2.8cm
		]current page.south east){\Large 定价：\TJ@price 元}; 
	\end{tikzpicture}
	\global\let\makebackcover\relax
}
%-------------------------------------------------------------------------------------------------------
\makeatother
