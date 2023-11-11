---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Основы работы с
Midnight Commander (mc). Структура программы на
языке ассемблера NASM. Системные вызовы в ОС
GNU Linux"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций
языка ассемблера mov и int.

# Теоретическое введение

Midnight Commander (или просто mc) — это программа, которая позволяет просматривать
структуру каталогов и выполнять основные операции по управлению файловой системой,
т.е. mc является файловым менеджером. Midnight Commander позволяет сделать работу с
файлами более удобной и наглядной.

Программа на языке ассемблера NASM, как правило, состоит из трёх секций: секция кода
программы (SECTION .text), секция инициированных (известных во время компиляции)
данных (SECTION .data) и секция неинициализированных данных (тех, под которые во
время компиляции только отводится память, а значение присваивается в ходе выполнения
программы) (SECTION .bss).

Простейший диалог с пользователем требует наличия двух функций — вывода текста на
экран и ввода текста с клавиатуры. Простейший способ вывести строку на экран — использо-
вать системный вызов write. Этот системный вызов имеет номер 4, поэтому перед вызовом
инструкции int необходимо поместить значение 4 в регистр eax. Первым аргументом write,
помещаемым в регистр ebx, задаётся дескриптор файла. Для вывода на экран в качестве
дескриптора файла нужно указать 1 (это означает «стандартный вывод», т. е. вывод на экран).
Вторым аргументом задаётся адрес выводимой строки (помещаем его в регистр ecx, напри-
мер, инструкцией mov ecx, msg). Строка может иметь любую длину. Последним аргументом
(т.е. в регистре edx) должна задаваться максимальная длина выводимой строки.
Для ввода строки с клавиатуры можно использовать аналогичный системный вызов read.
Его аргументы – такие же, как у вызова write, только для «чтения» с клавиатуры используется
файловый дескриптор 0 (стандартный ввод).
Системный вызов exit является обязательным в конце любой программы на языке ассем-
блер. Для обозначения конца программы перед вызовом инструкции int 80h необходимо
поместить в регистр еах значение 1, а в регистр ebx код завершения 0.

# Выполнение лабораторной работы

Открываю Midnight Commander (рис. @fig:001).

![Команда mc](image/1.png){#fig:001 width=70%}



Перехожу в каталог arch-pc (рис. @fig:002).

![Каталог arch-pc](image/2.png){#fig:002 width=70%}



Создаю папку lab05 (рис. @fig:003).

![Создание папки lab05](image/3.png){#fig:003 width=70%}



Создаю файл lab5.asm (рис. @fig:004).

![Создание файла lab5.asm](image/4.png){#fig:004 width=70%}



Открываю этот файл и ввожу текст программы (рис. @fig:005).

![Ввод текста программы](image/5.png){#fig:005 width=70%}



С помощью функциональной клавиши f3 проверяю текст (рис. @fig:006).

![Проверка текста](image/6.png){#fig:006 width=70%}



Транслирую текст программы lab5.asm в объектный файл. Выполняю компо-
новку объектного файла и запускаю получившийся исполняемый файл (рис. @fig:007).

![Транслирование, компновка, запуск lab5.asm](image/7.png){#fig:007 width=70%}



Ввожу своё ФИО (рис. @fig:008).

![Ввод имени](image/8.png){#fig:008 width=70%}



Открываю два разных каталога одновременно на правой и левой панелях (рис. @fig:009).

![Работа с панелями](image/9.png){#fig:009 width=70%}



Копирую файл in_out.asm в каталог с файлом lab5.asm с помощью функциональной
клавиши F5 (рис. @fig:010).

![Копирование файла in_out.asm](image/10.png){#fig:010idth=70%}



Создаю копию файла lab5-1.asm с именем lab5-2.asm (рис. @fig:011).

![Копирование файла lab5-1.asm с именем lab5-2.asm](image/11.png){#fig:011 width=70%}



Исправляю текст программы в файле lab5-2.asm с использование подпрограмм из внешнего файла in_out.asm. Создаю исполняемый файл и проверяю его работу  (рис. @fig:012).

![Изменение текста, транслирование, компновка, запуск lab5-2.asm](image/12.png){#fig:012 width=70%} 



Заменяю подпрограмму sprintLF на sprint (рис. @fig:013).

![Замена подпрограммы](image/13.png){#fig:013 width=70%}



Создаю исполняемый файл и проверяю его работу (рис. @fig:014).

![Транслирование, компновка, запуск lab5-2.asm. 2](image/14.png){#fig:014 width=70%}

Разница заключается в переносе строки ввода







# Самостоятельная работа

1) Создаю копию файла lab5.asm (рис. @fig:015).

![Копирование файла lab5.asm](image/15.png){#fig:015 width=70%}



Вношу изменения в программу (рис. @fig:016).

![Изменение текста. 2](image/17.png){#fig:016 width=70%}



Получаю исполняемый файл и проверяю его работу (рис. @fig:017).

![Транслирование, компновка, запуск lab5с.asm](image/16.png){#fig:017 width=70%}



Создаю копию файла lab5-2.asm (рис. @fig:018).

![Копирование файла lab5-2.asm](image/18.png){#fig:018 width=70%}



Вношу изменения в программу (рис. @fig:019).

![Изменение текста. 3](image/19.png){#fig:019 width=70%}



Получаю исполняемый файл и проверяю его работу (рис. @fig:020).

![Транслирование, компновка, запуск lab5-2с.asm](image/20.png){#fig:020 width=70%}


# Выводы

Я приобрела практические навыки работы в Midnight Commander. Освоила инструкции
языка ассемблера mov и int.

# Список литературы{.unnumbered}

::: {#refs}
:::
