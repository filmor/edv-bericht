set terminal pdf
set output 'grafiken/cfhtls.pdf'

set yrange [-0.3:0.3]

set xlabel 'Tage seit dem 31.12.1998'
set ylabel 'Differenz der "Qualitätsparameter"'

plot 'daten/daten.txt' u 1:($2-$3) notitle
