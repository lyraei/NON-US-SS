# Katabasis — wkładka winylowa A5 (LuaLaTeX + KOMA scrbook)

```text
main.tex               # klasa, przełączniki (\ifekran, \ifpolski), dane okładki, lista \input
preamble/packages.tex  # pakiety, geometria A5, kroje (URW Bookman + URW Gothic, fallback Harano Aji)
preamble/style.tex     # wygląd: kolory, pagina, okładka (\okladka), spis utworów (\tracklista)
preamble/commands.tex  # makra treści: \motto, \wstep, \tier, album, \cytat, \kolofon
tex/NN-nazwa.tex       # jedna sekcja = jeden plik
fonts/                 # pliki .otf URW (brak folderu → kroje z systemu)
img/okladki/           # okładki płyt (brak pliku → placeholder w kolorze strony)
project/               # wersja jednoplikowa: boxset.sty + lista.tex
```

Nowa sekcja: utwórz `tex/NN-nazwa.tex` i dodaj `\input{tex/NN-nazwa}` w `main.tex`.

```latex
\tier{Filary}{Pillars}{musztarda}   % nazwa, podtytuł, kolor
Tekst o stronie płyty.

\cytat{Wyróżniony cytat.}

\begin{album}{artist=Joni Mitchell, title=Blue, year=1971, country=CA, lang=en,
              cover=okladki/blue.jpg}
Opis płyty.
\end{album}
```

Klucze `album`: `artist`, `artist-latn`, `title`, `title-latn`, `year`, `country`, `lang`, `note`, `cover`.
Kolory stron: `musztarda`, `pomarancz`, `rdza`, `sliwka`, `morski`, `oliwka`.

Budowanie: `latexmk` → `build/main.pdf` (LuaLaTeX, konfiguracja w `.latexmkrc`).
Tryb druku (białe tło): `\ekranfalse` w `main.tex`; etykiety angielskie: `\polskifalse`.
