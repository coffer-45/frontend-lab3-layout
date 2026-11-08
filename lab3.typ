#set page(paper: "a4", margin: (x: 1.7cm, y: 1.8cm), numbering: none)
#set text(font: "New Computer Modern", lang: "uk", size: 11pt)
#set par(justify: true, leading: 0.65em)

#align(center)[
  Національний технічний університет України \
  «Київський політехнічний інститут імені Ігоря Сікорського»
  #v(0.2cm)
  Факультет інформатики та обчислювальної техніки \
  Кафедра інформаційних систем та технологій
]

#v(1fr)
#align(center)[
  #text(size: 21pt)[Основи FE-технологій]
  #v(0.6cm)
  #text(size: 22pt, weight: "bold")[Лабораторна робота №3]
  #v(0.3cm)
  «Блочна верстка макету сайту за допомогою HTML і CSS»
]
#v(1fr)
#align(right)[
  Виконав: Вовк Андрій Андрійович \
  студент групи ІО-41 \
  Номер у загальному списку: 67 \
  Варіант макета: 7
]
#v(1fr)
#align(center)[Київ — 2026]

#pagebreak()
#set page(numbering: "1", number-align: center + bottom)
#counter(page).update(1)

*Мета.* Зверстати один макет засобами HTML5 і CSS3 у двох варіантах: за
допомогою `float` та за допомогою Flexbox. Порівняти способи компонування блоків.

*Вибір макета.* У вступній лекції (слайд 9) задано формулу
`(my_num - 1) % total_variants + 1`. Для номера 67 та десяти зразків:
`(67 - 1) % 10 + 1 = 7`. Макет №7 наведено на с. 17 PDF методички: смуга тексту,
два блоки поруч (широке зображення ліворуч, вузький текст праворуч), а нижче —
зображення на всю ширину. Обидві версії мають однаковий вміст і пропорції.

#v(0.25cm)
#align(center)[#text(size: 15pt, weight: "bold")[Завдання 1. Верстка через float]]

У `index.html` середній ряд складається з блоків, для яких у `style.css` задано
`float: left` та *`width: 75%`* і *`width: 25%`*. Ці ширини є відсотками від
контейнера, як вимагає завдання. Правило `.layout-body::after` з `clear: both`
завершує потік плаваючих елементів перед нижнім зображенням. Кольори й
розташування відповідають структурі макета; замість написів-заповнювачів
«Img.» і «Text» додано реальне фото Мукачева та змістовний текст.

#figure(
  align(center)[#image("float-screenshot.png", width: 76%)],
  caption: [Версія макета №7 з плаваючими блоками 75% / 25%],
)

#pagebreak()
#align(center)[#text(size: 15pt, weight: "bold")[Завдання 2. Верстка через Flexbox]]

У `flex.html` для середнього ряду задано `display: flex`, а пропорції блоків
реалізовано через `flex-basis: 75%` і `flex-basis: 25%`. На вузьких екранах
обидві версії переводять середні блоки в одну колонку. На відміну від `float`,
Flexbox сам керує розташуванням дочірніх блоків і не потребує clearfix.

#figure(
  align(center)[#image("flex-screenshot.png", width: 76%)],
  caption: [Той самий макет №7, зверстаний засобами Flexbox],
)

*Перевірка та публікація.* Обидва HTML-файли перевірено W3C Nu Validator:
*0 помилок і 0 попереджень*. Локально їх можна відкрити в браузері без сервера.
Код: #link("https://github.com/coffer-45/frontend-lab3-layout")[репозиторій GitHub],
зокрема #link("https://github.com/coffer-45/frontend-lab3-layout/blob/main/index.html")[`index.html`],
#link("https://github.com/coffer-45/frontend-lab3-layout/blob/main/flex.html")[`flex.html`]
і #link("https://github.com/coffer-45/frontend-lab3-layout/blob/main/style.css")[`style.css`].
Сайти: #link("https://coffer-45.github.io/frontend-lab3-layout/")[Float],
#link("https://coffer-45.github.io/frontend-lab3-layout/flex.html")[Flexbox].

*Джерела.*
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/float")[MDN: `float`];
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/clear")[MDN: `clear`];
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_flexible_box_layout")[MDN: Flexbox];
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis")[MDN: `flex-basis`].
Фото Мукачева: #link("https://commons.wikimedia.org/wiki/File:%D0%9C%D1%83%D0%BA%D0%B0%D1%87%D0%B5%D0%B2%D0%BE%2C_%D1%86%D0%B5%D0%BD%D1%82%D1%80.jpg")[Петро Паровінчак / Wikimedia Commons],
#link("https://creativecommons.org/licenses/by-sa/3.0/")[CC BY-SA 3.0].

*Висновок.* Відтворено макет №7 двома різними способами; результати мають
однакову структуру, опубліковані на GitHub Pages і проходять перевірку HTML.
