set terminal pdf

set logscale x
set logscale y

set output 'grafiken/loglog1.pdf'
plot 'daten/solarsys.txt' u 3:4 i 2 notitle
set output 'grafiken/loglog2.pdf'
plot 'daten/solarsys.txt' u 3:4 i 3 notitle
set output 'grafiken/loglog3.pdf'
plot 'daten/solarsys.txt' u 3:4 i 4 notitle
set output 'grafiken/loglog4.pdf'
plot 'daten/solarsys.txt' u 3:4 i 5 notitle
set output 'grafiken/loglog5.pdf'
plot 'daten/solarsys.txt' u 3:4 i 6 notitle

