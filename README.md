# Piękna dusza — wkładka winylowa A5 (LuaLaTeX + KOMA scrbook)

```text
main.tex               # klasa, przełączniki (\ifekran, \ifpolski), dane okładki, lista \input
preamble/packages.tex  # pakiety, geometria A5, kroje (URW Bookman + URW Gothic, fallback Harano Aji)
preamble/style.tex     # wygląd: kolory, pagina, okładka (\okladka), spis utworów (\tracklista)
preamble/commands.tex  # makra treści: \motto, \wstep, \tier, album, \cytat, \przerwa, \kolofon
tex/NN-nazwa.tex       # jedna sekcja = jeden plik
fonts/                 # pliki .otf URW (brak folderu → kroje z systemu)
img/okladki/           # okładki płyt (brak pliku → placeholder w kolorze strony)
lista.md               # robocza lista płyt (źródło dla tex/*.tex)
build/                 # wyniki kompilacji (ignorowane przez git)
```

Nowa sekcja: utwórz `tex/NN-nazwa.tex` i dodaj `\input{tex/NN-nazwa}` w `main.tex`.

```latex
\tier{Filary}{Pillars}{musztarda}   % nazwa, podtytuł, kolor
Tekst o stronie płyty.

\cytat{Wyróżniony cytat.}
\przerwa                            % separator między fragmentami tekstu

\begin{album}{artist=Joni Mitchell, title=Blue, year=1971, country=CA, lang=en,
              cover=okladki/blue.jpg}
Opis płyty.
\end{album}
```

Klucze `album`: `artist`, `artist-latn`, `title`, `title-latn`, `year`, `country`, `lang`, `note`, `cover`.
Kolory stron: `musztarda`, `pomarancz`, `rdza`, `sliwka`, `morski`, `oliwka`.

Budowanie: zapis pliku w VS Code (Ctrl+S, LaTeX Workshop, `.vscode/settings.json`) albo `latexmk` w terminalu
→ `build/main.pdf` (LuaLaTeX, konfiguracja w `.latexmkrc`). Sprzątanie: `latexmk -c`.
Tryb druku (białe tło): `\ekranfalse` w `main.tex`; etykiety angielskie: `\polskifalse`.
