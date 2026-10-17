@default_files = ('main.tex');
$pdf_mode = 4;   # lualatex
$out_dir  = 'build';

# własny spis utworów (\tracklista → main.trk): sprzątany przez latexmk -c
push @generated_exts, 'trk';
