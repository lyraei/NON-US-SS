# Szablon LaTeX — książeczka A5

```
main.tex               # klasa, metadane (\tytul, \podtytul, \autor, \rok), lista \input
preamble/packages.tex  # pakiety, geometria A5, fonty (Inter, Inter Display, Harano Aji)
preamble/style.tex     # wygląd: kolory, pagina, strona tytułowa, spis treści
preamble/commands.tex  # makra treści: \rozdzial, \tier, album, \oryg
tex/NN-nazwa.tex       # jedna sekcja = jeden plik
bibliografia.bib
img/okladki/           # okładki płyt (brak pliku → szary placeholder)
```

Nowa sekcja: utwórz `tex/07-nazwa.tex` i dodaj `\input{tex/07-nazwa}` w `main.tex`.

```latex
\tier{I}{Filary}
Tekst o tierze.

\begin{album}{okladki/blue.jpg}{Joni Mitchell}{Blue}{1971 · CA}
    Opis płyty.
\end{album}
```

Budowanie: `latexmk` → `build/main.pdf` (LuaLaTeX + biber, konfiguracja w `.latexmkrc`).
Wymagane fonty: Inter (4.x, z Inter Display) i Harano Aji Gothic (w TeX Live).
