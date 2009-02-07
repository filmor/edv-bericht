set terminal pdf
set output 'grafiken/ueberlagerung.pdf'

plot sin(x) + cos(x)

A = 1.4
x_0 = 0.7

set output 'grafiken/vergleich.pdf'
plot A * cos(x - x_0), sin(x) + cos(x)
