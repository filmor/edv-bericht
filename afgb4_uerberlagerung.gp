set terminal postscript
set output 'grafiken/ueberlagerung.eps'

plot sin(x) + cos(x)

A = 1.4
x_0 = 0.7

set output 'grafiken/vergleich.eps'
plot A * cos(x - x_0), sin(x) + cos(x)
