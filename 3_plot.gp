set terminal pdf

set logscale x
set logscale y

set output 'grafiken/loglog.pdf'
plot 'daten/solarsys.txt' u 3:4 notitle

