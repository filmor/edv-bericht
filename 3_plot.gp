set terminal pdf

set logscale x
set logscale y

set xlabel 'bla'
set ylabel 'bla'

set output 'grafiken/loglog.pdf'
plot 'daten/solarsys.txt' u 3:4 notitle

