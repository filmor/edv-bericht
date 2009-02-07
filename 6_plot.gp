set terminal pdf
set output 'grafiken/cfhtls.pdf'

set yrange [-0.3:0.3]

plot 'daten/daten.txt' u 1:($2-$3) title 'Daten'
