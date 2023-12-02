---
## Front matter
title: "Отчёт по лабораторной работе №6"
subtitle: "Арифметические операции в NASM."
author: "Грачева Мария Валерьевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение арифметических инструкций языка ассемблера NASM


# Теоретическое введение

Большинство инструкций на языке ассемблера требуют обработки операндов. Адрес операнда предоставляет место, где хранятся данные, подлежащие обработке. Это могут быть данные хранящиеся в регистре или в ячейке памяти. Далее рассмотрены все существующие способы задания адреса хранения операндов – способы адресации.

Существует три основных способа адресации:

• *Регистровая адресация* – операнды хранятся в регистрах и в команде используются
имена этих регистров, например: mov ax,bx.
• *Непосредственная адресация* – значение операнда задается непосредственно в ко-
манде, Например: mov ax,2.
• *Адресация памяти* – операнд задает адрес в памяти. В команде указывается символи-
ческое обозначение ячейки памяти, над содержимым которой требуется выполнить
операцию.

**Арифметические операции в NASM**

Сложение - add
Вычитание - sub
Умножение - mul
Деление - div

Для выполнения лабораторных работ в файле in_out.asm реализованы подпрограммы
для преобразования ASCII символов в числа и обратно. Это:
• *iprint* – вывод на экран чисел в формате ASCII, перед вызовом iprint в регистр eax
необходимо записать выводимое число (mov eax,<int>).
• *iprintLF* – работает аналогично iprint, но при выводе на экран после числа добавляет
к символ перевода строки.
• *atoi* – функция преобразует ascii-код символа в целое число и записает результат
в регистр eax, перед вызовом atoi в регистр eax необходимо записать число (mov
eax,<int>).

# Выполнение лабораторной работы

Создаю каталог для программам лабораторной работы № 6, перехожу в него и создаю файл lab6-1.asm(рис. @fig:001).

![Название рисунка](image/1.png){#fig:001 width=70%}


(рис. @fig:002).

![Название рисунка](image/.png){#fig:002 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}

(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}

(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


(рис. @fig:001).

![Название рисунка](image/.png){#fig:001 width=70%}


# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
