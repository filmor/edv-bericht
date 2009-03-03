set fit errorvariables

plot 'daten/auto_daten.txt' u 1:2:3 w yerrorbars

s(t) = s_0 + v_1 * t + 0.5 * a_1 * t**2
fit s(x) 'daten/auto_daten.txt' u 1:2:3 via s_0, v_1, a_1

plot 'daten/auto_daten.txt' u 1:2:3 w yerrorbars, s(x)

plot 'daten/auto_daten.txt' u 1:4:5 w yerrorbars

v(t) = v_2 + a_2 * t
fit v(x) 'daten/auto_daten.txt' u 1:4:5 via v_2, a_2

print 'Beschleunigung:  ', a_1, ' ', a_2
print 'Fehler dazu:     ', a_1_err, ' ', a_2_err
print 'Geschwindigkeit: ', v_1, '  ', v_2
print 'Fehler dazu:     ', v_1_err, ' ', v_2_err

